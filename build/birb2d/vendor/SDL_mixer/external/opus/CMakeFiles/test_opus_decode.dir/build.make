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
include birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/compiler_depend.make

# Include the progress variables for this target.
include birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/progress.make

# Include the compile flags for this target's objects.
include birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/flags.make

birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.o: birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/flags.make
birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.o: /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opus/tests/test_opus_decode.c
birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.o: birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toasterbirb/git/void/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.o"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opus && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.o -MF CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.o.d -o CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.o -c /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opus/tests/test_opus_decode.c

birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.i"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opus && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opus/tests/test_opus_decode.c > CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.i

birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.s"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opus && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opus/tests/test_opus_decode.c -o CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.s

# Object files for target test_opus_decode
test_opus_decode_OBJECTS = \
"CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.o"

# External object files for target test_opus_decode
test_opus_decode_EXTERNAL_OBJECTS =

birb2d/vendor/SDL_mixer/external/opus/test_opus_decode: birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/tests/test_opus_decode.c.o
birb2d/vendor/SDL_mixer/external/opus/test_opus_decode: birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/build.make
birb2d/vendor/SDL_mixer/external/opus/test_opus_decode: birb2d/vendor/SDL_mixer/external/opus/libopus.so.0.8.0
birb2d/vendor/SDL_mixer/external/opus/test_opus_decode: birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/toasterbirb/git/void/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_opus_decode"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opus && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_opus_decode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/build: birb2d/vendor/SDL_mixer/external/opus/test_opus_decode
.PHONY : birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/build

birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/clean:
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opus && $(CMAKE_COMMAND) -P CMakeFiles/test_opus_decode.dir/cmake_clean.cmake
.PHONY : birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/clean

birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/depend:
	cd /home/toasterbirb/git/void/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/toasterbirb/git/void /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opus /home/toasterbirb/git/void/build /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opus /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : birb2d/vendor/SDL_mixer/external/opus/CMakeFiles/test_opus_decode.dir/depend

