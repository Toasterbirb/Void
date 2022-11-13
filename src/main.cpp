#include "Birb2D.hpp"
#include "Cavegen.hpp"

using namespace Birb;

static float player_speed = 500.0f;
static Rect new_player_pos;
static Circle collision_point;

void SetCaveScenePosition(Cavegen& cavegen, const int& tile_size, const Entity& player)
{
	Vector2 distance_from_start = (Vector2Int( player.rect.x, player.rect.y ) - cavegen.startPosition()).ToFloat();
	distance_from_start = distance_from_start - Vector2((tile_size - player.rect.w) / 2.0, (tile_size - player.rect.h) / 2.0);
	cavegen.scene.SetPosition(distance_from_start);
}

void CenterThePlayer(Entity& player, const int& tile_size, const Window& window)
{
	player.rect.x = window.dimensions.x / 2.0 - tile_size / 2.0;
	player.rect.y = window.dimensions.y / 2.0 - tile_size / 2.0;
}

int main(int argc, char** argv)
{
	Debug::Log("Loading assets...");
	AssetManager::InitializeBundledAssets();

	Debug::Log("Creating the window");
	Window window("Void", Birb::Vector2Int(1280, 720), 300, false);

	Splash splash(window);
	splash.Run();

	TimeStep timeStep;
	timeStep.Init(&window);

	Vector2Int cave_dimensions = {24, 24};
	int tile_size = 128;
	int tile_count = 256;

	Texture cave_wall_sprite("brick.png");
	Cavegen cavegen(cave_dimensions, tile_count, tile_size, cave_wall_sprite);

	/* Create the player entity */
	Entity player("Player", Rect((window.dimensions.x / 2.0) - tile_size / 2.0,
				(window.dimensions.y / 2.0) - tile_size / 2.0,
				tile_size / 4.0, tile_size / 4.0));

	player.rect.color = Colors::Green;

	new_player_pos = {
		0,
		0,
		player.rect.w,
		player.rect.h
	};


	/* Create the goal entity */
	Scene goal_scene;
	Entity goal("Goal", Rect(cavegen.endPosition().x + tile_size / 4.0,
				cavegen.endPosition().y + tile_size / 4.0,
				tile_size / 2.0, tile_size / 2.0));
	goal.rect.color = Colors::Red;
	goal_scene.AddObject(&goal);

	/* Calculate the distance from the player to the level starting position */
	SetCaveScenePosition(cavegen, tile_size, player);

	goal_scene.SetPosition(cavegen.scene.Position());

	Debug::Log("Starting the game loop");

	bool keydown = false;
	Vector2 direction;

	bool ApplicationRunning = true;
	while (ApplicationRunning)
	{
		timeStep.Start();
		while (timeStep.Running())
		{
			/* Handle input stuff */
			while (window.PollEvents())
			{
				window.EventTick(window.event, &ApplicationRunning);

				direction = {0, 0};

				const Uint8 *state = SDL_GetKeyboardState(NULL);
				if (state[SDL_SCANCODE_LEFT] || state[SDL_SCANCODE_H] || state[SDL_SCANCODE_A])
					direction = direction + Vector2::Right();

				if (state[SDL_SCANCODE_RIGHT] || state[SDL_SCANCODE_L] || state[SDL_SCANCODE_D])
					direction = direction + Vector2::Left();

				if (state[SDL_SCANCODE_UP] || state[SDL_SCANCODE_K] || state[SDL_SCANCODE_W])
					direction = direction + Vector2::Up();

				if (state[SDL_SCANCODE_DOWN] || state[SDL_SCANCODE_J] || state[SDL_SCANCODE_S])
					direction = direction + Vector2::Down();

				keydown = direction != Vector2(0, 0);

			}

			timeStep.Step();
		}

		if (keydown)
		{
			//MICROPROFILE_SCOPEI("Game group", "Movement update", MP_GREEN);
			Vector2 movement_delta = direction * timeStep.deltaTime * player_speed;
			new_player_pos.x = player.rect.x - movement_delta.x;
			new_player_pos.y = player.rect.y - movement_delta.y;

			/* Check for collision */
			bool collision_found = false;
			for (int i = 0; i < cavegen.wallCount(); ++i)
			{
				if (Physics::RectCollision(new_player_pos, cavegen.wallEntities()[i].rect))
				{
					collision_found = true;
					break;
				}
			}

			if (!collision_found)
				cavegen.scene.Translate(movement_delta);

			/* Update goal position */
			goal_scene.SetPosition(cavegen.scene.Position());

			/* Check if the player collided with the goal */
			if (Physics::EntityCollision(goal, player))
			{
				cavegen.Reset();
				SetCaveScenePosition(cavegen, tile_size, player);
				goal_scene.SetPosition(cavegen.scene.Position());
				goal.rect = cavegen.endPosition();
				goal.rect.x += tile_size / 4.0;
				goal.rect.y += tile_size / 4.0;
			}
		}

		/* Draw lines from the player to all enemies */
		std::vector<Rect> boundingBoxes;
		std::vector<Vector2> line_points_to_render;
		line_points_to_render.reserve(cavegen.enemyEntities().size() * 2);

		/* Find the tile that the player is on right now */
		Vector2Int current_player_tile(std::round(std::abs(cavegen.wallEntities()[0].rect.x - (player.rect.x - player.rect.w)) / 128), std::round(std::abs(cavegen.wallEntities()[0].rect.y - (player.rect.y - player.rect.h)) / 128));
		Vector2Int start_tile;
		Vector2Int end_tile;

		for (size_t i = 0; i < cavegen.enemyEntities().size(); ++i)
		{
			/* Check which one is more up + left, the player or the enemy */
			Vector2Int enemy_tile(std::abs(cavegen.enemyEntities()[i].rect.x - cavegen.wallEntities()[0].rect.x) / 128, std::abs(cavegen.enemyEntities()[i].rect.y - cavegen.wallEntities()[0].rect.y) / 128);
			if (current_player_tile.x < enemy_tile.x)
			{
				start_tile.x 	= current_player_tile.x;
				end_tile.x 		= enemy_tile.x;
			}
			else
			{
				start_tile.x	= enemy_tile.x;
				end_tile.x 		= current_player_tile.x;
			}

			if (current_player_tile.y < enemy_tile.y)
			{
				start_tile.y 	= current_player_tile.y;
				end_tile.y		= enemy_tile.y;
			}
			else
			{
				start_tile.y	= enemy_tile.y;
				end_tile.y 		= current_player_tile.y;
			}

			if (end_tile.x > cave_dimensions.x - 1)
				end_tile.x = cave_dimensions.x - 1;

			if (end_tile.y > cave_dimensions.y - 1)
				end_tile.y = cave_dimensions.y - 1;

			//std::cout << "Start: " << start_tile << ", " << end_tile << std::endl;

			/* Check if the player is even near the enemy */
			//if (Math::VectorDistance(Vector2(player.rect.x, player.rect.y), Vector2(cavegen.enemyEntities()[i].rect.x, cavegen.enemyEntities()[i].rect.y)) > window.dimensions.x / 2.0)
			//	continue;

			Line line = Line({player.rect.x + player.rect.w / 2.0, player.rect.y + player.rect.h / 2.0}, {cavegen.enemyEntities()[i].rect.x + cavegen.enemyEntities()[i].rect.w / 2.0, cavegen.enemyEntities()[i].rect.y + cavegen.enemyEntities()[i].rect.h / 2.0});
			bool collision_found = false;
			for (int j = start_tile.x; j < end_tile.x - 1; ++j)
			{
				for (int k = start_tile.y; k < end_tile.y - 1; ++k)
				{
					int wall_index = utils::FlatIndex(Vector2Int(j, k), cave_dimensions);

					if (!cavegen.isWall[wall_index])
						continue;

					std::cout << "Accessing wall: " << j << ", " << k << std::endl;

					std::vector<Line> lines = cavegen.wallEntities()[wall_index].rect.toLines();
					for (short k = 0; k < 4; ++k)
					{
						if (Physics::LineIntersection(line, lines[k]))
						{
							collision_found = true;
							collision_point = Circle(8, Vector2(cavegen.wallEntities()[wall_index].rect.x + tile_size * 0.5, cavegen.wallEntities()[wall_index].rect.y + tile_size * 0.5).ToInt(), Colors::Green);
							//std::cout << "Enemy [" << i << "] Collision at wall [" << j << " / " << cavegen.wallCount() << "]: " << cavegen.wallEntities()[j].rect << std::endl;
							break;
						}
					}

					if (collision_found)
						break;
				}

				if (collision_found)
					break;
			}
			if (collision_found == false)
			{
				line_points_to_render.push_back(line.pointA);
				line_points_to_render.push_back(line.pointB);
				//boundingBoxes.push_back(line.boundingBox());
			}
		}


		window.Clear();
		/* Handle rendering */

		cavegen.scene.Render();
		Render::DrawEntity(goal);
		Render::DrawEntity(player);

		Render::DrawLines(Colors::White, &line_points_to_render[0], line_points_to_render.size());

		for (size_t i = 0; i < boundingBoxes.size(); ++i)
		{
			Render::DrawRect(Colors::LightGray, boundingBoxes[i], 2);
		}

		if (line_points_to_render.size() == 0)
		{
			Render::DrawCircle(collision_point);
		}

		/* End of rendering */
		window.Display();

		timeStep.End();
	}

	Debug::Log("Freeing assets...");
	AssetManager::FreeBundledAssets();

	return 0;
}
