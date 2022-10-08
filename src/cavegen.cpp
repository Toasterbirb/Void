#include "Cavegen.hpp"

using namespace Birb;

Cavegen::Cavegen(Birb::Vector2Int dimensions, int cave_size, int tile_size)
:tile_size(tile_size), dimensions(dimensions), walk_area_count(0)
{
	isWall = new bool[dimensions.x * dimensions.y];
	for (int i = 0; i < dimensions.x * dimensions.y; ++i)
		isWall[i] = true;

	start_pos = {rand.RandomInt(1, dimensions.x - 2),
				rand.RandomInt(1, dimensions.y - 2)};
	DrunkWalk(start_pos, cave_size);
}

Cavegen::~Cavegen()
{
	delete[] isWall;
	delete[] walls;
}

Vector2Int Cavegen::GetDimensions() const
{
	return dimensions;
}

Vector2Int Cavegen::startPosition() const
{
	return Vector2Int(start_pos.y, start_pos.x);
}

Vector2Int Cavegen::endPosition() const
{
	return Vector2Int(end_pos.y, end_pos.x);
}

int Cavegen::wallCount() const
{
	return wall_count;
}

Birb::Entity* Cavegen::wallEntities() const
{
	return walls;
}

void Cavegen::DrunkWalk(Vector2Int start_pos, int tile_count)
{
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
				std::cout << "\033[32m s\033[0m";
				continue;
			}

			if (i == end_pos.x && j == end_pos.y)
			{
				std::cout << "\033[31m e\033[0m";
				continue;
			}

			if (isWall[utils::FlatIndex({i, j}, dimensions)])
				std::cout << " x";
			else
				std::cout << "  ";
		}
		std::cout << "\n";
	}

	/* Create a scene for the walls */
	CreateScene();
}

void Cavegen::CreateScene()
{
	wall_count = (dimensions.x * dimensions.y) - walk_area_count + 1;
	walls = new Entity[wall_count];

	int flat_index;
	int wall_counter = 0;
	for (int i = 0; i < dimensions.x; ++i)
	{
		for (int j = 0; j < dimensions.y; ++j)
		{
			flat_index = utils::FlatIndex({i, j}, dimensions);
			if (isWall[flat_index])
			{
				walls[wall_counter] = Entity("Wall", Rect(j * tile_size, i * tile_size, tile_size + 1, tile_size + 1));
				walls[wall_counter].rect.color = 0xFFFFFF;
				scene.AddObject(&walls[wall_counter]);

				++wall_counter;
			}
		}
	}
}
