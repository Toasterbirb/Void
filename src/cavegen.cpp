#include "Cavegen.hpp"
#include <algorithm>

using namespace Birb;

Cavegen::Cavegen(Birb::Vector2Int dimensions, int cave_size, int tile_size, Texture& wall_texture)
:texture(wall_texture), tile_size(tile_size), cave_size(cave_size), dimensions(dimensions), walk_area_count(0)
{
	isWall = new bool[dimensions.x * dimensions.y];
	CreateNewCave();
}

Cavegen::~Cavegen()
{
	delete[] isWall;
	delete[] walls;
	delete[] walkable_tiles;
}

Vector2Int Cavegen::GetDimensions() const
{
	return dimensions;
}

Vector2Int Cavegen::startPosition() const
{
	return Vector2Int(start_pos.y, start_pos.x) * tile_size + scene.Position().ToInt();
}

Vector2Int Cavegen::endPosition() const
{
	return Vector2Int(end_pos.y, end_pos.x) * tile_size + scene.Position().ToInt();
}

int Cavegen::wallCount() const
{
	return wall_count;
}

Entity* Cavegen::wallEntities() const
{
	return walls;
}

std::vector<Entity> Cavegen::enemyEntities() const
{
	return enemies;
}

void Cavegen::Reset()
{
	/* Free the old walls */
	//delete[] isWall;
	delete[] walls;
	delete[] walkable_tiles;

	/* Reset some values */
	walk_area_count = 0;
	wall_count 		= 0;

	scene.Clear();
	wall_scene.Clear();
	enemy_scene.Clear();

	/* Clear enemies */
	enemies.clear();

	CreateNewCave();
}

void Cavegen::CreateNewCave()
{
	scene.AddObject(&wall_scene);
	scene.AddObject(&enemy_scene);
	std::fill_n(isWall, dimensions.x * dimensions.y, true);
	//for (int i = 0; i < dimensions.x * dimensions.y; ++i)
	//	isWall[i] = true;

	start_pos = {rand.RandomInt(1, dimensions.x - 2),
				rand.RandomInt(1, dimensions.y - 2)};
	DrunkWalk(start_pos, cave_size);

	/* Create a scene for the walls */
	CreateScene();

	/* Spawn the enemies */
	SpawnEnemies();
}

void Cavegen::DrunkWalk(Vector2Int start_pos, int tile_count)
{
	//MICROPROFILE_SCOPEI("Game group", "Drunk walk", MP_YELLOW);
	if (tile_count > dimensions.x * dimensions.y)
		tile_count = dimensions.x * dimensions.y - 2;

	int safe_guard_counter = 0;
	int safe_guard_max = (dimensions.x * dimensions.y) * 2;

	Vector2Int next_pos = start_pos;
	Vector2Int restore_point;
	int random_direction;

	/* Flip the start position */
	isWall[utils::FlatIndex(start_pos, dimensions)] = false;
	++walk_area_count;

	while (walk_area_count < tile_count && safe_guard_counter < safe_guard_max)
	{
		restore_point = next_pos;
		random_direction = rand.RandomInt(0, 3);
		switch (random_direction)
		{
			case (0):
				next_pos = next_pos + Vector2Int::Up();
				break;

			case (1):
				next_pos = next_pos + Vector2Int::Down();
				break;

			case (2):
				next_pos = next_pos + Vector2Int::Left();
				break;

			case (3):
				next_pos = next_pos + Vector2Int::Right();
				break;

			default:
				Debug::Log("Please fix the random number generator...", Debug::Type::warning);
				break;
		}

		/* Check if the point is at the border or out of bounds */
		if (next_pos.x < 1)
		{
			next_pos = restore_point;
			continue;
		}
		if (next_pos.y < 1)
		{
			next_pos = restore_point;
			continue;
		}
		if (next_pos.x > dimensions.x - 2)
		{
			next_pos = restore_point;
			continue;
		}
		if (next_pos.y > dimensions.y - 2)
		{
			next_pos = restore_point;
			continue;
		}

		/* Check if the next position is a wall */
		int flat_index = utils::FlatIndex(next_pos, dimensions);
		if (isWall[flat_index])
		{
			isWall[flat_index] = false;
			++walk_area_count;
		}

		++safe_guard_counter;
	}

	end_pos = next_pos;

	/* Print out the cave layout */
	for (int i = 0; i < dimensions.x; ++i)
	{
		for (int j = 0; j < dimensions.y; ++j)
		{
			if (i == start_pos.x && j == start_pos.y)
			{
#ifndef __WINDOWS__
				std::cout << "\033[32m s\033[0m";
#else
				std::cout << " s";
#endif
				continue;
			}

			if (i == end_pos.x && j == end_pos.y)
			{
#ifndef __WINDOWS__
				std::cout << "\033[31m e\033[0m";
#else
				std::cout << " e";
#endif
				continue;
			}

			if (isWall[utils::FlatIndex({i, j}, dimensions)])
				std::cout << " #";
			else
				std::cout << "  ";
		}
		std::cout << "\n";
	}

	/* Find all walkables tiles and put them into a list for
	 * later use */
	int walkable_tile_counter = 0;
	walkable_tiles = new Vector2Int[walk_area_count];
	for (int i = 0; i < dimensions.x; ++i)
	{
		for (int j = 0; j < dimensions.y; ++j)
		{
			if (isWall[utils::FlatIndex(Vector2Int(i, j), Vector2Int(dimensions.x, dimensions.y))] == false)
			{
				walkable_tiles[walkable_tile_counter] = { i, j };
				++walkable_tile_counter;
			}
		}
	}
}

void Cavegen::CreateScene()
{
	//MICROPROFILE_SCOPEI("Game group", "Create cave scene", MP_YELLOW);
	wall_count = (dimensions.x * dimensions.y) - walk_area_count + 1;

	walls = new Entity[wall_count];
	std::fill_n(walls, wall_count, Entity("Wall", Rect(0, 0, tile_size + 1, tile_size + 1), texture));

	wall_scene.PreAllocate(wall_count);

	int flat_index;
	int wall_counter = 0;
	for (int i = 0; i < dimensions.x; ++i)
	{
		for (int j = 0; j < dimensions.y; ++j)
		{
			flat_index = utils::FlatIndex({i, j}, dimensions);
			if (isWall[flat_index])
			{
				//walls[wall_counter] = Entity("Wall", Rect(j * tile_size, i * tile_size, tile_size + 1, tile_size + 1), texture);
				walls[wall_counter].rect.x = j * tile_size;
				walls[wall_counter].rect.y = i * tile_size;
				wall_scene.AddObjectFast(&walls[wall_counter]);

				++wall_counter;
			}
		}
	}
}

void Cavegen::SpawnEnemies()
{
	int enemy_count = rand.RandomInt(10, 50);
	enemies.reserve(enemy_count);
	std::vector<int> picked_tiles(enemy_count);

	for (int i = 0; i < enemy_count; ++i)
	{
		/* Pick one of the walkable tiles at random
		 * and make sure that it hasn't been picked before */
		int tile_index;
		bool not_used_tile_found = true;
		do
		{
			tile_index = rand.RandomInt(1, walk_area_count - 1);
			for (int j = 0; j < i + 1; ++j)
			{
				if (picked_tiles[j] != tile_index)
				{
					not_used_tile_found = false;
					break;
				}
			}
		} while (not_used_tile_found);
		picked_tiles.push_back(tile_index);

		/* Create an entity for the enemy and add it into the enemy vector */
		Entity enemy("Enemy", Rect(walkable_tiles[tile_index].y * tile_size,
					walkable_tiles[tile_index].x * tile_size,
					tile_size, tile_size));
		enemies.push_back(enemy);
		enemy_scene.AddObjectFast(&enemies[enemies.size() - 1]);
	}

	Debug::Log("Enemy count: " + std::to_string(enemy_count));
}
