#pragma once
#include "Birb2D.hpp"

namespace Birb
{
	struct Enemy
	{
		Enemy(const Rect& rect, int& tile_size, Random& rand, float movement_speed);
		Entity entity;
		std::string name;
		int* tile_size;
		Random* rand;

		std::vector<Vector2Int> movement_path;

		/* Movement stuff */
		float movement_speed;
		int current_movement_goal;
		float movement_interpolation_value;
		void PopulateMovementPath();
		void MovementTick(const TimeStep& timeStep);
	};
}
