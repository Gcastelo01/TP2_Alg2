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
include src/cliques/cliquer/CMakeFiles/cliquer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/cliques/cliquer/CMakeFiles/cliquer.dir/compiler_depend.make

# Include the progress variables for this target.
include src/cliques/cliquer/CMakeFiles/cliquer.dir/progress.make

# Include the compile flags for this target's objects.
include src/cliques/cliquer/CMakeFiles/cliquer.dir/flags.make

src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer.c.o: src/cliques/cliquer/CMakeFiles/cliquer.dir/flags.make
src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer.c.o: /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/src/cliques/cliquer/cliquer.c
src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer.c.o: src/cliques/cliquer/CMakeFiles/cliquer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer.c.o"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/src/cliques/cliquer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer.c.o -MF CMakeFiles/cliquer.dir/cliquer.c.o.d -o CMakeFiles/cliquer.dir/cliquer.c.o -c /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/src/cliques/cliquer/cliquer.c

src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cliquer.dir/cliquer.c.i"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/src/cliques/cliquer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/src/cliques/cliquer/cliquer.c > CMakeFiles/cliquer.dir/cliquer.c.i

src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cliquer.dir/cliquer.c.s"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/src/cliques/cliquer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/src/cliques/cliquer/cliquer.c -o CMakeFiles/cliquer.dir/cliquer.c.s

src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer_graph.c.o: src/cliques/cliquer/CMakeFiles/cliquer.dir/flags.make
src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer_graph.c.o: /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/src/cliques/cliquer/cliquer_graph.c
src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer_graph.c.o: src/cliques/cliquer/CMakeFiles/cliquer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer_graph.c.o"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/src/cliques/cliquer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer_graph.c.o -MF CMakeFiles/cliquer.dir/cliquer_graph.c.o.d -o CMakeFiles/cliquer.dir/cliquer_graph.c.o -c /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/src/cliques/cliquer/cliquer_graph.c

src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer_graph.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cliquer.dir/cliquer_graph.c.i"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/src/cliques/cliquer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/src/cliques/cliquer/cliquer_graph.c > CMakeFiles/cliquer.dir/cliquer_graph.c.i

src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer_graph.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cliquer.dir/cliquer_graph.c.s"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/src/cliques/cliquer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/src/cliques/cliquer/cliquer_graph.c -o CMakeFiles/cliquer.dir/cliquer_graph.c.s

src/cliques/cliquer/CMakeFiles/cliquer.dir/reorder.c.o: src/cliques/cliquer/CMakeFiles/cliquer.dir/flags.make
src/cliques/cliquer/CMakeFiles/cliquer.dir/reorder.c.o: /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/src/cliques/cliquer/reorder.c
src/cliques/cliquer/CMakeFiles/cliquer.dir/reorder.c.o: src/cliques/cliquer/CMakeFiles/cliquer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/cliques/cliquer/CMakeFiles/cliquer.dir/reorder.c.o"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/src/cliques/cliquer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/cliques/cliquer/CMakeFiles/cliquer.dir/reorder.c.o -MF CMakeFiles/cliquer.dir/reorder.c.o.d -o CMakeFiles/cliquer.dir/reorder.c.o -c /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/src/cliques/cliquer/reorder.c

src/cliques/cliquer/CMakeFiles/cliquer.dir/reorder.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cliquer.dir/reorder.c.i"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/src/cliques/cliquer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/src/cliques/cliquer/reorder.c > CMakeFiles/cliquer.dir/reorder.c.i

src/cliques/cliquer/CMakeFiles/cliquer.dir/reorder.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cliquer.dir/reorder.c.s"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/src/cliques/cliquer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/src/cliques/cliquer/reorder.c -o CMakeFiles/cliquer.dir/reorder.c.s

cliquer: src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer.c.o
cliquer: src/cliques/cliquer/CMakeFiles/cliquer.dir/cliquer_graph.c.o
cliquer: src/cliques/cliquer/CMakeFiles/cliquer.dir/reorder.c.o
cliquer: src/cliques/cliquer/CMakeFiles/cliquer.dir/build.make
.PHONY : cliquer

# Rule to build all files generated by this target.
src/cliques/cliquer/CMakeFiles/cliquer.dir/build: cliquer
.PHONY : src/cliques/cliquer/CMakeFiles/cliquer.dir/build

src/cliques/cliquer/CMakeFiles/cliquer.dir/clean:
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/src/cliques/cliquer && $(CMAKE_COMMAND) -P CMakeFiles/cliquer.dir/cmake_clean.cmake
.PHONY : src/cliques/cliquer/CMakeFiles/cliquer.dir/clean

src/cliques/cliquer/CMakeFiles/cliquer.dir/depend:
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1 /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/src/cliques/cliquer /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/src/cliques/cliquer /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/src/cliques/cliquer/CMakeFiles/cliquer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/cliques/cliquer/CMakeFiles/cliquer.dir/depend
