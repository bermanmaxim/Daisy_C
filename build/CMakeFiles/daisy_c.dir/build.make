# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/maxim/Daisy_C

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maxim/Daisy_C/build

# Include any dependencies generated for this target.
include CMakeFiles/daisy_c.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/daisy_c.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/daisy_c.dir/flags.make

CMakeFiles/daisy_c.dir/main.cpp.o: CMakeFiles/daisy_c.dir/flags.make
CMakeFiles/daisy_c.dir/main.cpp.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/maxim/Daisy_C/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/daisy_c.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/daisy_c.dir/main.cpp.o -c /home/maxim/Daisy_C/main.cpp

CMakeFiles/daisy_c.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/daisy_c.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/maxim/Daisy_C/main.cpp > CMakeFiles/daisy_c.dir/main.cpp.i

CMakeFiles/daisy_c.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/daisy_c.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/maxim/Daisy_C/main.cpp -o CMakeFiles/daisy_c.dir/main.cpp.s

CMakeFiles/daisy_c.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/daisy_c.dir/main.cpp.o.requires

CMakeFiles/daisy_c.dir/main.cpp.o.provides: CMakeFiles/daisy_c.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/daisy_c.dir/build.make CMakeFiles/daisy_c.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/daisy_c.dir/main.cpp.o.provides

CMakeFiles/daisy_c.dir/main.cpp.o.provides.build: CMakeFiles/daisy_c.dir/main.cpp.o

# Object files for target daisy_c
daisy_c_OBJECTS = \
"CMakeFiles/daisy_c.dir/main.cpp.o"

# External object files for target daisy_c
daisy_c_EXTERNAL_OBJECTS =

daisy_c: CMakeFiles/daisy_c.dir/main.cpp.o
daisy_c: CMakeFiles/daisy_c.dir/build.make
daisy_c: libdaisy/lib/libdaisy.a
daisy_c: CMakeFiles/daisy_c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable daisy_c"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/daisy_c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/daisy_c.dir/build: daisy_c
.PHONY : CMakeFiles/daisy_c.dir/build

CMakeFiles/daisy_c.dir/requires: CMakeFiles/daisy_c.dir/main.cpp.o.requires
.PHONY : CMakeFiles/daisy_c.dir/requires

CMakeFiles/daisy_c.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/daisy_c.dir/cmake_clean.cmake
.PHONY : CMakeFiles/daisy_c.dir/clean

CMakeFiles/daisy_c.dir/depend:
	cd /home/maxim/Daisy_C/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maxim/Daisy_C /home/maxim/Daisy_C /home/maxim/Daisy_C/build /home/maxim/Daisy_C/build /home/maxim/Daisy_C/build/CMakeFiles/daisy_c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/daisy_c.dir/depend
