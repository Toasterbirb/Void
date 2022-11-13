#pragma once
#include "Birb2D.hpp"

namespace Birb
{
	class Cavegen
	{
	public:
		Cavegen(Vector2Int dimensions, int cave_size, int tile_size, Texture& wall_texture);
		~Cavegen();
		Vector2Int GetDimensions() const;
		bool* isWall;
		Entity** wallPointers;
		Scene scene;

		Vector2Int startPosition() const;
		Vector2Int endPosition() const;
		int wallCount() const;
		Entity* wallEntities() const;
		std::vector<Entity> enemyEntities() const;

		void Reset(); ///< Reset the cave and create a new one

	private:
		Texture& texture;
		Vector2Int start_pos;
		Vector2Int end_pos;

		Random rand;
		int tile_size;
		int cave_size;

		void CreateNewCave();
		void DrunkWalk(Vector2Int start_pos, int tile_count);
		void CreateScene();

		Scene wall_scene;
		Entity* walls;
		Vector2Int dimensions;
		int walk_area_count;
		int wall_count;
		Vector2Int* walkable_tiles;

		/* Enemies */
		void SpawnEnemies();
		Scene enemy_scene;
		std::vector<Entity> enemies;
	};
}
