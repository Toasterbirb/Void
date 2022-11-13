#include "Enemy.hpp"

#define ENEMY_PLAN_AHEAD 10
#define MOVEMENT_STEP_MULTIPLIER 4

using namespace Birb;

Enemy::Enemy(const Rect& rect, int& tile_size, Random& rand, float movement_speed)
:tile_size(&tile_size), rand(&rand), movement_speed(movement_speed)
{
	entity = Entity("Enemy", rect);
	current_movement_goal = 1;
	movement_interpolation_value = 0;
	movement_path.reserve(ENEMY_PLAN_AHEAD);
	PopulateMovementPath();
}

void Enemy::PopulateMovementPath()
{
	std::cout << "Planning a new path..." << std::endl;

	movement_path.clear();
	movement_path.push_back(Vector2Int(entity.rect.x, entity.rect.y));

	for (int i = 1; i < ENEMY_PLAN_AHEAD; ++i)
	{
		int safeguard_counter = 0;
		Vector2Int next_position;
		do
		{

			int direction_horizontal 	= 0;
			int direction_vertical 		= 0;

			if (rand->RandomInt(0, 1) == 0)
				direction_horizontal = *tile_size;
			else
				direction_horizontal = -*tile_size;

			if (rand->RandomInt(0, 1) == 0)
				direction_vertical = *tile_size;
			else
				direction_vertical = -*tile_size;

			next_position.x += direction_horizontal * *tile_size / MOVEMENT_STEP_MULTIPLIER;
			next_position.y += direction_vertical * *tile_size / MOVEMENT_STEP_MULTIPLIER;

			bool duplicate_direction_found = false;
			for (size_t j = 0; j < movement_path.size(); ++j)
			{
				if (next_position == movement_path[j])
				{
					duplicate_direction_found = true;
					break;
				}
			}
			if (!duplicate_direction_found)
				break;

			++safeguard_counter;
		} while (safeguard_counter < 5);

		movement_path.push_back(next_position);
	}
}

void Enemy::MovementTick(const TimeStep& timeStep)
{
	movement_interpolation_value += (timeStep.deltaTime * movement_speed);
	Vector2Int new_position = Math::Lerp(movement_path[current_movement_goal - 1], movement_path[current_movement_goal], movement_interpolation_value);
	entity.rect.x = new_position.x;
	entity.rect.y = new_position.y;
	std::cout << "Index: " << current_movement_goal << " | Interpolation: " << movement_interpolation_value << " | Timestep: " << timeStep.deltaTime << std::endl;

	if (movement_interpolation_value > 1.0f)
	{
		++current_movement_goal;
		movement_interpolation_value = 0;
	}

	if (current_movement_goal > ENEMY_PLAN_AHEAD - 1)
	{
		PopulateMovementPath();
	}
}
