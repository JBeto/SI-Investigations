# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jbeto/Documents/SI/SI-Investigations

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jbeto/Documents/SI/SI-Investigations

# Include any dependencies generated for this target.
include .Secret/Talkto/CMakeFiles/Talkto.dir/depend.make

# Include the progress variables for this target.
include .Secret/Talkto/CMakeFiles/Talkto.dir/progress.make

# Include the compile flags for this target's objects.
include .Secret/Talkto/CMakeFiles/Talkto.dir/flags.make

.Secret/Talkto/CMakeFiles/Talkto.dir/talk.cpp.o: .Secret/Talkto/CMakeFiles/Talkto.dir/flags.make
.Secret/Talkto/CMakeFiles/Talkto.dir/talk.cpp.o: .Secret/Talkto/talk.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jbeto/Documents/SI/SI-Investigations/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object .Secret/Talkto/CMakeFiles/Talkto.dir/talk.cpp.o"
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Talkto.dir/talk.cpp.o -c /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto/talk.cpp

.Secret/Talkto/CMakeFiles/Talkto.dir/talk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Talkto.dir/talk.cpp.i"
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto/talk.cpp > CMakeFiles/Talkto.dir/talk.cpp.i

.Secret/Talkto/CMakeFiles/Talkto.dir/talk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Talkto.dir/talk.cpp.s"
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto/talk.cpp -o CMakeFiles/Talkto.dir/talk.cpp.s

.Secret/Talkto/CMakeFiles/Talkto.dir/game.cpp.o: .Secret/Talkto/CMakeFiles/Talkto.dir/flags.make
.Secret/Talkto/CMakeFiles/Talkto.dir/game.cpp.o: .Secret/Talkto/game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jbeto/Documents/SI/SI-Investigations/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object .Secret/Talkto/CMakeFiles/Talkto.dir/game.cpp.o"
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Talkto.dir/game.cpp.o -c /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto/game.cpp

.Secret/Talkto/CMakeFiles/Talkto.dir/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Talkto.dir/game.cpp.i"
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto/game.cpp > CMakeFiles/Talkto.dir/game.cpp.i

.Secret/Talkto/CMakeFiles/Talkto.dir/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Talkto.dir/game.cpp.s"
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto/game.cpp -o CMakeFiles/Talkto.dir/game.cpp.s

# Object files for target Talkto
Talkto_OBJECTS = \
"CMakeFiles/Talkto.dir/talk.cpp.o" \
"CMakeFiles/Talkto.dir/game.cpp.o"

# External object files for target Talkto
Talkto_EXTERNAL_OBJECTS =

.Secret/Talkto/Talkto: .Secret/Talkto/CMakeFiles/Talkto.dir/talk.cpp.o
.Secret/Talkto/Talkto: .Secret/Talkto/CMakeFiles/Talkto.dir/game.cpp.o
.Secret/Talkto/Talkto: .Secret/Talkto/CMakeFiles/Talkto.dir/build.make
.Secret/Talkto/Talkto: .Secret/Talkto/CMakeFiles/Talkto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jbeto/Documents/SI/SI-Investigations/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Talkto"
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Talkto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
.Secret/Talkto/CMakeFiles/Talkto.dir/build: .Secret/Talkto/Talkto

.PHONY : .Secret/Talkto/CMakeFiles/Talkto.dir/build

.Secret/Talkto/CMakeFiles/Talkto.dir/clean:
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto && $(CMAKE_COMMAND) -P CMakeFiles/Talkto.dir/cmake_clean.cmake
.PHONY : .Secret/Talkto/CMakeFiles/Talkto.dir/clean

.Secret/Talkto/CMakeFiles/Talkto.dir/depend:
	cd /home/jbeto/Documents/SI/SI-Investigations && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jbeto/Documents/SI/SI-Investigations /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto /home/jbeto/Documents/SI/SI-Investigations /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto /home/jbeto/Documents/SI/SI-Investigations/.Secret/Talkto/CMakeFiles/Talkto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : .Secret/Talkto/CMakeFiles/Talkto.dir/depend
