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
include vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/compiler_depend.make

# Include the progress variables for this target.
include vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/progress.make

# Include the compile flags for this target's objects.
include vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/flags.make

vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/mini-gmp.c.o: vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/flags.make
vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/mini-gmp.c.o: /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/vendor/mini-gmp/mini-gmp.c
vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/mini-gmp.c.o: vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/mini-gmp.c.o"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/vendor/mini-gmp && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/mini-gmp.c.o -MF CMakeFiles/gmp_vendored.dir/mini-gmp.c.o.d -o CMakeFiles/gmp_vendored.dir/mini-gmp.c.o -c /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/vendor/mini-gmp/mini-gmp.c

vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/mini-gmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gmp_vendored.dir/mini-gmp.c.i"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/vendor/mini-gmp && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/vendor/mini-gmp/mini-gmp.c > CMakeFiles/gmp_vendored.dir/mini-gmp.c.i

vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/mini-gmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gmp_vendored.dir/mini-gmp.c.s"
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/vendor/mini-gmp && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/vendor/mini-gmp/mini-gmp.c -o CMakeFiles/gmp_vendored.dir/mini-gmp.c.s

gmp_vendored: vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/mini-gmp.c.o
gmp_vendored: vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/build.make
.PHONY : gmp_vendored

# Rule to build all files generated by this target.
vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/build: gmp_vendored
.PHONY : vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/build

vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/clean:
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/vendor/mini-gmp && $(CMAKE_COMMAND) -P CMakeFiles/gmp_vendored.dir/cmake_clean.cmake
.PHONY : vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/clean

vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/depend:
	cd /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1 /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/vendor/mini-gmp /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/vendor/mini-gmp /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build/vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vendor/mini-gmp/CMakeFiles/gmp_vendored.dir/depend

