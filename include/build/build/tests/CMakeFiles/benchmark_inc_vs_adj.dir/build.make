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
CMAKE_SOURCE_DIR = /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/benchmark_inc_vs_adj.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/benchmark_inc_vs_adj.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/benchmark_inc_vs_adj.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/benchmark_inc_vs_adj.dir/flags.make

tests/CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.o: tests/CMakeFiles/benchmark_inc_vs_adj.dir/flags.make
tests/CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.o: /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/tests/benchmarks/inc_vs_adj.c
tests/CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.o: tests/CMakeFiles/benchmark_inc_vs_adj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.o"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.o -MF CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.o.d -o CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.o -c /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/tests/benchmarks/inc_vs_adj.c

tests/CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.i"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/tests/benchmarks/inc_vs_adj.c > CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.i

tests/CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.s"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/tests/benchmarks/inc_vs_adj.c -o CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.s

# Object files for target benchmark_inc_vs_adj
benchmark_inc_vs_adj_OBJECTS = \
"CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.o"

# External object files for target benchmark_inc_vs_adj
benchmark_inc_vs_adj_EXTERNAL_OBJECTS =

tests/benchmark_inc_vs_adj: tests/CMakeFiles/benchmark_inc_vs_adj.dir/benchmarks/inc_vs_adj.c.o
tests/benchmark_inc_vs_adj: tests/CMakeFiles/benchmark_inc_vs_adj.dir/build.make
tests/benchmark_inc_vs_adj: src/libigraph.a
tests/benchmark_inc_vs_adj: /usr/lib/x86_64-linux-gnu/libm.so
tests/benchmark_inc_vs_adj: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
tests/benchmark_inc_vs_adj: /usr/lib/x86_64-linux-gnu/libpthread.so
tests/benchmark_inc_vs_adj: tests/CMakeFiles/benchmark_inc_vs_adj.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable benchmark_inc_vs_adj"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/benchmark_inc_vs_adj.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/benchmark_inc_vs_adj.dir/build: tests/benchmark_inc_vs_adj
.PHONY : tests/CMakeFiles/benchmark_inc_vs_adj.dir/build

tests/CMakeFiles/benchmark_inc_vs_adj.dir/clean:
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/benchmark_inc_vs_adj.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/benchmark_inc_vs_adj.dir/clean

tests/CMakeFiles/benchmark_inc_vs_adj.dir/depend:
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/tests /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/build /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/build/tests /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/build/build/tests/CMakeFiles/benchmark_inc_vs_adj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/benchmark_inc_vs_adj.dir/depend

