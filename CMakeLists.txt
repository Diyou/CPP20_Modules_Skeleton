cmake_minimum_required(VERSION 3.30 FATAL_ERROR)

list(APPEND CMAKE_MODULE_PATH
    ${CMAKE_CURRENT_SOURCE_DIR}/CMake
)

include(config)

project(Hello-World)

set(CMAKE_CXX_SCAN_FOR_MODULES ON)
set(CMAKE_CXX_EXTENSIONS ON)

add_executable(Hello-World)
target_compile_features(Hello-World
PUBLIC 
    cxx_std_23
)

add_subdirectory(Source)