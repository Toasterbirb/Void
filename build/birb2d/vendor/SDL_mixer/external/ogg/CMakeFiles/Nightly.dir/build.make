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

# Utility rule file for Nightly.

# Include any custom commands dependencies for this target.
include birb2d/vendor/SDL_mixer/external/ogg/CMakeFiles/Nightly.dir/compiler_depend.make

# Include the progress variables for this target.
include birb2d/vendor/SDL_mixer/external/ogg/CMakeFiles/Nightly.dir/progress.make

birb2d/vendor/SDL_mixer/external/ogg/CMakeFiles/Nightly:
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/ogg && /usr/bin/ctest -D Nightly

Nightly: birb2d/vendor/SDL_mixer/external/ogg/CMakeFiles/Nightly
Nightly: birb2d/vendor/SDL_mixer/external/ogg/CMakeFiles/Nightly.dir/build.make
.PHONY : Nightly

# Rule to build all files generated by this target.
birb2d/vendor/SDL_mixer/external/ogg/CMakeFiles/Nightly.dir/build: Nightly
.PHONY : birb2d/vendor/SDL_mixer/external/ogg/CMakeFiles/Nightly.dir/build

birb2d/vendor/SDL_mixer/external/ogg/CMakeFiles/Nightly.dir/clean:
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/ogg && $(CMAKE_COMMAND) -P CMakeFiles/Nightly.dir/cmake_clean.cmake
.PHONY : birb2d/vendor/SDL_mixer/external/ogg/CMakeFiles/Nightly.dir/clean

birb2d/vendor/SDL_mixer/external/ogg/CMakeFiles/Nightly.dir/depend:
	cd /home/toasterbirb/git/void/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/toasterbirb/git/void /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg /home/toasterbirb/git/void/build /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/ogg /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/ogg/CMakeFiles/Nightly.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : birb2d/vendor/SDL_mixer/external/ogg/CMakeFiles/Nightly.dir/depend

