# Void
A shortlived dungeon crawler project made with [Birb2D](https://github.com/Toasterbirb/Birb2D)

![Preview video](./gameplay.mp4)

The idea of the game was to be some sorta roguelike with enemies to fight and stuff, but development became quite annoying due to the fact that Birb2D doesn't have a camera system nor a way to differentiate between screenspace and worldspace. Maybe I'll look into a project like this again when such things have been developed into Birb2D. This project definitely wasn't a waste of time though. Probably the biggest change that this project brough was the inclusion of [microprofile](https://github.com/jonasmr/microprofile) into Birb2D due to the performance heavy nature of some aspects in the game.

## Compiling
```sh
git clone --recursive https://github.com/Toasterbirb/Void
cd Void
mkdir build
cd build
cmake ..
make -j$(nproc)
```
