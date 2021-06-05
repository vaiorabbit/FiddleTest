Project(mydll)
cmake_minimum_required(VERSION 3.0)

include_directories(.)

set(MYDLL_SOURCES
    ${CMAKE_CURRENT_LIST_DIR}/mydll.c
	)

add_library(mydll SHARED ${MYDLL_SOURCES})

set_target_properties(mydll PROPERTIES PREFIX "")

add_subdirectory(Test)
