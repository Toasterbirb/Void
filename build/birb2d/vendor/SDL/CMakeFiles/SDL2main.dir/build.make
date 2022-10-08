# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/toasterbirb/git/void

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/toasterbirb/git/void/build

# Include any dependencies generated for this target.
include birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/compiler_depend.make

# Include the progress variables for this target.
include birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/progress.make

# Include the compile flags for this target's objects.
include birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/flags.make

birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o: birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/flags.make
birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o: /home/toasterbirb/git/void/birb2d/vendor/SDL/src/main/dummy/SDL_dummy_main.c
birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o: birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toasterbirb/git/void/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o -MF CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o.d -o CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o -c /home/toasterbirb/git/void/birb2d/vendor/SDL/src/main/dummy/SDL_dummy_main.c

birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.i"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toasterbirb/git/void/birb2d/vendor/SDL/src/main/dummy/SDL_dummy_main.c > CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.i

birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.s"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toasterbirb/git/void/birb2d/vendor/SDL/src/main/dummy/SDL_dummy_main.c -o CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.s

# Object files for target SDL2main
SDL2main_OBJECTS = \
"CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o"

# External object files for target SDL2main
SDL2main_EXTERNAL_OBJECTS =

birb2d/vendor/SDL/libSDL2maind.a: birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/src/main/dummy/SDL_dummy_main.c.o
birb2d/vendor/SDL/libSDL2maind.a: birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/build.make
birb2d/vendor/SDL/libSDL2maind.a: birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/toasterbirb/git/void/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libSDL2maind.a"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL && $(CMAKE_COMMAND) -P CMakeFiles/SDL2main.dir/cmake_clean_target.cmake
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SDL2main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/build: birb2d/vendor/SDL/libSDL2maind.a
.PHONY : birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/build

birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/clean:
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL && $(CMAKE_COMMAND) -P CMakeFiles/SDL2main.dir/cmake_clean.cmake
.PHONY : birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/clean

birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/depend:
	cd /home/toasterbirb/git/void/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/toasterbirb/git/void /home/toasterbirb/git/void/birb2d/vendor/SDL /home/toasterbirb/git/void/build /home/toasterbirb/git/void/build/birb2d/vendor/SDL /home/toasterbirb/git/void/build/birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : birb2d/vendor/SDL/CMakeFiles/SDL2main.dir/depend

