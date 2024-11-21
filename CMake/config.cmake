set(CMAKE_EXPERIMENTAL_CXX_IMPORT_STD "0e5b6991-d74f-4b3d-a41c-cf096e0b2508")
set(CMAKE_CXX_MODULE_STD ON)
if(LINUX)
    set(ENV{CC} clang)
    set(ENV{CXX} clang++)
    string(APPEND CMAKE_CXX_FLAGS "-stdlib=libc++ -fexperimental-library ")
endif()


function(Configure FILE_IN FILE_OUT)
set(COPY_REMARK "\
# Do not edit!
# This file was auto-generated
# Source: ${FILE_IN}
")
configure_file(${FILE_IN} ${FILE_OUT} @ONLY NEWLINE_STYLE UNIX)
endfunction()

# clangd support
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
Configure(CMake/.clangd ${CMAKE_CURRENT_SOURCE_DIR}/.clangd)