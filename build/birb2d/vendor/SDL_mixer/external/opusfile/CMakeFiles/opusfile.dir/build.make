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
include birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/compiler_depend.make

# Include the progress variables for this target.
include birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/progress.make

# Include the compile flags for this target's objects.
include birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/flags.make

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/info.c.o: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/flags.make
birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/info.c.o: /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/info.c
birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/info.c.o: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toasterbirb/git/void/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/info.c.o"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/info.c.o -MF CMakeFiles/opusfile.dir/src/info.c.o.d -o CMakeFiles/opusfile.dir/src/info.c.o -c /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/info.c

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/info.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/opusfile.dir/src/info.c.i"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/info.c > CMakeFiles/opusfile.dir/src/info.c.i

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/info.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/opusfile.dir/src/info.c.s"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/info.c -o CMakeFiles/opusfile.dir/src/info.c.s

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/internal.c.o: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/flags.make
birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/internal.c.o: /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/internal.c
birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/internal.c.o: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toasterbirb/git/void/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/internal.c.o"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/internal.c.o -MF CMakeFiles/opusfile.dir/src/internal.c.o.d -o CMakeFiles/opusfile.dir/src/internal.c.o -c /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/internal.c

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/internal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/opusfile.dir/src/internal.c.i"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/internal.c > CMakeFiles/opusfile.dir/src/internal.c.i

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/internal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/opusfile.dir/src/internal.c.s"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/internal.c -o CMakeFiles/opusfile.dir/src/internal.c.s

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/opusfile.c.o: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/flags.make
birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/opusfile.c.o: /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/opusfile.c
birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/opusfile.c.o: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toasterbirb/git/void/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/opusfile.c.o"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/opusfile.c.o -MF CMakeFiles/opusfile.dir/src/opusfile.c.o.d -o CMakeFiles/opusfile.dir/src/opusfile.c.o -c /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/opusfile.c

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/opusfile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/opusfile.dir/src/opusfile.c.i"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/opusfile.c > CMakeFiles/opusfile.dir/src/opusfile.c.i

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/opusfile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/opusfile.dir/src/opusfile.c.s"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/opusfile.c -o CMakeFiles/opusfile.dir/src/opusfile.c.s

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/stream.c.o: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/flags.make
birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/stream.c.o: /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/stream.c
birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/stream.c.o: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toasterbirb/git/void/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/stream.c.o"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/stream.c.o -MF CMakeFiles/opusfile.dir/src/stream.c.o.d -o CMakeFiles/opusfile.dir/src/stream.c.o -c /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/stream.c

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/stream.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/opusfile.dir/src/stream.c.i"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/stream.c > CMakeFiles/opusfile.dir/src/stream.c.i

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/stream.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/opusfile.dir/src/stream.c.s"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile/src/stream.c -o CMakeFiles/opusfile.dir/src/stream.c.s

# Object files for target opusfile
opusfile_OBJECTS = \
"CMakeFiles/opusfile.dir/src/info.c.o" \
"CMakeFiles/opusfile.dir/src/internal.c.o" \
"CMakeFiles/opusfile.dir/src/opusfile.c.o" \
"CMakeFiles/opusfile.dir/src/stream.c.o"

# External object files for target opusfile
opusfile_EXTERNAL_OBJECTS =

birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so.0.12: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/info.c.o
birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so.0.12: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/internal.c.o
birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so.0.12: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/opusfile.c.o
birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so.0.12: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/src/stream.c.o
birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so.0.12: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/build.make
birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so.0.12: birb2d/vendor/SDL_mixer/external/ogg/libogg.so.0.8.5
birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so.0.12: birb2d/vendor/SDL_mixer/external/opus/libopus.so.0.8.0
birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so.0.12: birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/toasterbirb/git/void/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C shared library libopusfile.so"
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opusfile.dir/link.txt --verbose=$(VERBOSE)
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && $(CMAKE_COMMAND) -E cmake_symlink_library libopusfile.so.0.12 libopusfile.so.0 libopusfile.so

birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so.0: birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so.0.12
	@$(CMAKE_COMMAND) -E touch_nocreate birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so.0

birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so: birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so.0.12
	@$(CMAKE_COMMAND) -E touch_nocreate birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so

# Rule to build all files generated by this target.
birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/build: birb2d/vendor/SDL_mixer/external/opusfile/libopusfile.so
.PHONY : birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/build

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/clean:
	cd /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile && $(CMAKE_COMMAND) -P CMakeFiles/opusfile.dir/cmake_clean.cmake
.PHONY : birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/clean

birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/depend:
	cd /home/toasterbirb/git/void/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/toasterbirb/git/void /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/opusfile /home/toasterbirb/git/void/build /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile /home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : birb2d/vendor/SDL_mixer/external/opusfile/CMakeFiles/opusfile.dir/depend

