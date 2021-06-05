set( MyTest_SOURCES
    MyTest.c
)

include_directories( .. )
include_directories( . )

add_executable( MyTest ${MyTest_SOURCES} )
add_dependencies( MyTest mydll )
target_link_libraries( MyTest mydll )

add_custom_command(TARGET MyTest
                   POST_BUILD
                   COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:MyTest> ${CMAKE_CURRENT_LIST_DIR}/..)
