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
include tests/CMakeFiles/test_truss.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/test_truss.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_truss.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test_truss.dir/flags.make

tests/CMakeFiles/test_truss.dir/unit/truss.c.o: tests/CMakeFiles/test_truss.dir/flags.make
tests/CMakeFiles/test_truss.dir/unit/truss.c.o: /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/tests/unit/truss.c
tests/CMakeFiles/test_truss.dir/unit/truss.c.o: tests/CMakeFiles/test_truss.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/test_truss.dir/unit/truss.c.o"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/CMakeFiles/test_truss.dir/unit/truss.c.o -MF CMakeFiles/test_truss.dir/unit/truss.c.o.d -o CMakeFiles/test_truss.dir/unit/truss.c.o -c /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/tests/unit/truss.c

tests/CMakeFiles/test_truss.dir/unit/truss.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_truss.dir/unit/truss.c.i"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/tests/unit/truss.c > CMakeFiles/test_truss.dir/unit/truss.c.i

tests/CMakeFiles/test_truss.dir/unit/truss.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_truss.dir/unit/truss.c.s"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/tests/unit/truss.c -o CMakeFiles/test_truss.dir/unit/truss.c.s

# Object files for target test_truss
test_truss_OBJECTS = \
"CMakeFiles/test_truss.dir/unit/truss.c.o"

# External object files for target test_truss
test_truss_EXTERNAL_OBJECTS = \
"/home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests/CMakeFiles/test_utilities.dir/unit/test_utilities.c.o"

tests/test_truss: tests/CMakeFiles/test_truss.dir/unit/truss.c.o
tests/test_truss: tests/CMakeFiles/test_utilities.dir/unit/test_utilities.c.o
tests/test_truss: tests/CMakeFiles/test_truss.dir/build.make
tests/test_truss: src/libigraph.a
tests/test_truss: src/libigraph.a
tests/test_truss: /usr/lib/x86_64-linux-gnu/libm.so
tests/test_truss: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
tests/test_truss: /usr/lib/x86_64-linux-gnu/libpthread.so
tests/test_truss: tests/CMakeFiles/test_truss.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_truss"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_truss.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test_truss.dir/build: tests/test_truss
.PHONY : tests/CMakeFiles/test_truss.dir/build

tests/CMakeFiles/test_truss.dir/clean:
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_truss.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_truss.dir/clean

tests/CMakeFiles/test_truss.dir/depend:
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1 /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/tests /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/tests/CMakeFiles/test_truss.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test_truss.dir/depend

