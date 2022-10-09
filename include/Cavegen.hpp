#pragma once
#include "Birb2D.hpp"

class Cavegen
{
public:
	Cavegen(Birb::Vector2Int dimensions, int cave_size, int tile_size, Birb::Texture& wall_texture);
	~Cavegen();
	Birb::Vector2Int GetDimensions() const;
	bool* isWall;
	Birb::Scene scene;

	Birb::Vector2Int startPosition() const;
	Birb::Vector2Int endPosition() const;
	int wallCount() const;
	Birb::Entity* wallEntities() const;

	void Reset(); ///< Reset the cave and create a new one

private:
	Birb::Texture& texture;
	Birb::Vector2Int start_pos;
	Birb::Vector2Int end_pos;

	Birb::Random rand;
	int tile_size;
	int cave_size;

	void CreateNewCave();
	void DrunkWalk(Birb::Vector2Int start_pos, int tile_count);
	void CreateScene();

	Birb::Entity* walls;
	Birb::Vector2Int dimensions;
	int walk_area_count;
	int wall_count;
};
