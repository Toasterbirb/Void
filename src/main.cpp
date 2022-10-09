#include "Birb2D.hpp"
#include "Cavegen.hpp"

using namespace Birb;

static float player_speed = 500.0f;

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
	Debug::Log("Creating the window");
	Window window("Void", Birb::Vector2Int(1280, 720), 300, false);

	Splash splash(window);
	splash.Run();

	TimeStep timeStep;
	timeStep.Init(&window);

	Vector2Int cave_dimensions = {24, 24};
	int tile_size = 128;
	int tile_count = 256;

	Texture cave_wall_sprite("./res/brick.png");
	Cavegen cavegen(cave_dimensions, tile_count, tile_size, cave_wall_sprite);

	/* Create the player entity */
	Entity player("Player", Rect((window.dimensions.x / 2.0) - tile_size / 2.0,
				(window.dimensions.y / 2.0) - tile_size / 2.0,
				tile_size / 4.0, tile_size / 4.0));

	player.rect.color = Colors::Green;


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
				if (state[SDL_SCANCODE_LEFT] || state[SDL_SCANCODE_H])
					direction = direction + Vector2::Right();

				if (state[SDL_SCANCODE_RIGHT] || state[SDL_SCANCODE_L])
					direction = direction + Vector2::Left();

				if (state[SDL_SCANCODE_UP] || state[SDL_SCANCODE_K])
					direction = direction + Vector2::Up();

				if (state[SDL_SCANCODE_DOWN] || state[SDL_SCANCODE_J])
					direction = direction + Vector2::Down();

				keydown = direction != Vector2(0, 0);

			}

			timeStep.Step();
		}

		if (keydown)
		{
			Vector2 movement_delta = direction * timeStep.deltaTime * player_speed;
			Rect new_player_pos = {
				player.rect.x - movement_delta.x,
				player.rect.y - movement_delta.y,
				player.rect.w,
				player.rect.h
			};

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

		window.Clear();
		/* Handle rendering */

		cavegen.scene.Render();
		Render::DrawEntity(goal);
		Render::DrawEntity(player);

		/* End of rendering */
		window.Display();

		timeStep.End();
	}

	return 0;
}
