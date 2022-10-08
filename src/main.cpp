#include "Birb2D.hpp"
#include "Cavegen.hpp"

using namespace Birb;

static float player_speed = 500.0f;

int main(int argc, char** argv)
{
	Debug::Log("Creating the window");
	Window window("Void", Birb::Vector2Int(1280, 720), 300, false);

	Splash splash(window);
	splash.Run();

	TimeStep timeStep;
	timeStep.Init(&window);

	Vector2Int cave_dimensions = {24, 24};
	int tile_size = 64;

	Cavegen cavegen(cave_dimensions, 512, tile_size);

	/* Create the player entity */
	Entity player("Player", Rect((window.dimensions.x / 2.0) - tile_size / 2.0,
				(window.dimensions.y / 2.0) - tile_size / 2.0,
				tile_size / 2.0, tile_size / 2.0));

	player.rect.color = Colors::Green;

	/* Create the goal entity */
	Entity goal("Goal", Rect(cavegen.endPosition().x - tile_size / 2.0,
				cavegen.endPosition().y - tile_size / 2.0,
				tile_size / 2.0, tile_size / 2.0));

	goal.rect.color = Colors::Red;


	/* Calculate the distance from the player to the level starting position */
	Vector2 distance_from_start = (Vector2Int( player.rect.x, player.rect.y ) - cavegen.startPosition() * tile_size).ToFloat();
	distance_from_start = distance_from_start - Vector2((tile_size - player.rect.w) / 2.0, (tile_size - player.rect.h) / 2.0);
	cavegen.scene.SetPosition(distance_from_start);

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
				if (state[SDL_SCANCODE_LEFT])
					direction = direction + Vector2::Right();

				if (state[SDL_SCANCODE_RIGHT])
					direction = direction + Vector2::Left();

				if (state[SDL_SCANCODE_UP])
					direction = direction + Vector2::Up();

				if (state[SDL_SCANCODE_DOWN])
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
