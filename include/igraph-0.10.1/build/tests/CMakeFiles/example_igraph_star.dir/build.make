# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/example_igraph_star.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/example_igraph_star.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/example_igraph_star.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/example_igraph_star.dir/flags.make

tests/CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.o: tests/CMakeFiles/example_igraph_star.dir/flags.make
tests/CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.o: /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/examples/simple/igraph_star.c
tests/CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.o: tests/CMakeFiles/example_igraph_star.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.o"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.o -MF CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.o.d -o CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.o -c /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/examples/simple/igraph_star.c

tests/CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.i"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/examples/simple/igraph_star.c > CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.i

tests/CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.s"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/examples/simple/igraph_star.c -o CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.s

# Object files for target example_igraph_star
example_igraph_star_OBJECTS = \
"CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.o"

# External object files for target example_igraph_star
example_igraph_star_EXTERNAL_OBJECTS =

tests/example_igraph_star: tests/CMakeFiles/example_igraph_star.dir/__/examples/simple/igraph_star.c.o
tests/example_igraph_star: tests/CMakeFiles/example_igraph_star.dir/build.make
tests/example_igraph_star: src/libigraph.a
tests/example_igraph_star: /usr/lib/x86_64-linux-gnu/libm.so
tests/example_igraph_star: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
tests/example_igraph_star: /usr/lib/x86_64-linux-gnu/libpthread.so
tests/example_igraph_star: tests/CMakeFiles/example_igraph_star.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example_igraph_star"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_igraph_star.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/example_igraph_star.dir/build: tests/example_igraph_star
.PHONY : tests/CMakeFiles/example_igraph_star.dir/build

tests/CMakeFiles/example_igraph_star.dir/clean:
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/example_igraph_star.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/example_igraph_star.dir/clean

tests/CMakeFiles/example_igraph_star.dir/depend:
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1 /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/tests /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests/CMakeFiles/example_igraph_star.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/example_igraph_star.dir/depend

