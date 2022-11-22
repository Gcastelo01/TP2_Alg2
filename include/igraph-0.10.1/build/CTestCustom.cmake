# Ask CTest to run the build_tests target before running the tests. This can be
# turned off with an environment variable, which is useful in cases when you
# are working on unit tests for a long time and you are manually rebuilding the
# ones affected by your modifications, but you _don't_ want to wait for CTest
# to rebuild everything
if(NOT DEFINED ENV{IGRAPH_CTEST_MANUAL_BUILD})
  message(STATUS "Auto rebuild tests")
  set(CTEST_CUSTOM_PRE_TEST "/usr/bin/cmake --build /home/gcastelo/faculdade/5o_semestre/ALG2/TP2_Alg2/include/igraph-0.10.1/build --target build_tests")
endif()
