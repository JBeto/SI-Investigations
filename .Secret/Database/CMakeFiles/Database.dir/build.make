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
include .Secret/Database/CMakeFiles/Database.dir/depend.make

# Include the progress variables for this target.
include .Secret/Database/CMakeFiles/Database.dir/progress.make

# Include the compile flags for this target's objects.
include .Secret/Database/CMakeFiles/Database.dir/flags.make

.Secret/Database/CMakeFiles/Database.dir/database.cpp.o: .Secret/Database/CMakeFiles/Database.dir/flags.make
.Secret/Database/CMakeFiles/Database.dir/database.cpp.o: .Secret/Database/database.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jbeto/Documents/SI/SI-Investigations/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object .Secret/Database/CMakeFiles/Database.dir/database.cpp.o"
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Database && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Database.dir/database.cpp.o -c /home/jbeto/Documents/SI/SI-Investigations/.Secret/Database/database.cpp

.Secret/Database/CMakeFiles/Database.dir/database.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Database.dir/database.cpp.i"
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jbeto/Documents/SI/SI-Investigations/.Secret/Database/database.cpp > CMakeFiles/Database.dir/database.cpp.i

.Secret/Database/CMakeFiles/Database.dir/database.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Database.dir/database.cpp.s"
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Database && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jbeto/Documents/SI/SI-Investigations/.Secret/Database/database.cpp -o CMakeFiles/Database.dir/database.cpp.s

# Object files for target Database
Database_OBJECTS = \
"CMakeFiles/Database.dir/database.cpp.o"

# External object files for target Database
Database_EXTERNAL_OBJECTS =

.Secret/Database/libDatabase.a: .Secret/Database/CMakeFiles/Database.dir/database.cpp.o
.Secret/Database/libDatabase.a: .Secret/Database/CMakeFiles/Database.dir/build.make
.Secret/Database/libDatabase.a: .Secret/Database/CMakeFiles/Database.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jbeto/Documents/SI/SI-Investigations/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libDatabase.a"
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Database && $(CMAKE_COMMAND) -P CMakeFiles/Database.dir/cmake_clean_target.cmake
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Database && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Database.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
.Secret/Database/CMakeFiles/Database.dir/build: .Secret/Database/libDatabase.a

.PHONY : .Secret/Database/CMakeFiles/Database.dir/build

.Secret/Database/CMakeFiles/Database.dir/clean:
	cd /home/jbeto/Documents/SI/SI-Investigations/.Secret/Database && $(CMAKE_COMMAND) -P CMakeFiles/Database.dir/cmake_clean.cmake
.PHONY : .Secret/Database/CMakeFiles/Database.dir/clean

.Secret/Database/CMakeFiles/Database.dir/depend:
	cd /home/jbeto/Documents/SI/SI-Investigations && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jbeto/Documents/SI/SI-Investigations /home/jbeto/Documents/SI/SI-Investigations/.Secret/Database /home/jbeto/Documents/SI/SI-Investigations /home/jbeto/Documents/SI/SI-Investigations/.Secret/Database /home/jbeto/Documents/SI/SI-Investigations/.Secret/Database/CMakeFiles/Database.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : .Secret/Database/CMakeFiles/Database.dir/depend
