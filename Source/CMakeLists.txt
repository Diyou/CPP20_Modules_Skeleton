target_sources(Hello-World
PUBLIC
    FILE_SET module_files
    TYPE CXX_MODULES
    BASE_DIRS
        ${CMAKE_CURRENT_LIST_DIR}
    FILES
        _Module.ixx
        World.ixx
)
target_sources(Hello-World
PRIVATE
    main.cpp
    World.cpp
)