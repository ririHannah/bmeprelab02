cmake_minimum_required(VERSION 3.13)

# Target board must be set BEFORE importing the SDK
set(PICO_BOARD pico_w)

# Pull in the Pico SDK (PICO_SDK_PATH is set by the devcontainer)
include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

project(incrementing_display C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

add_executable(incrementing_display main.c)

target_link_libraries(incrementing_display pico_stdlib)

# Produces the .uf2 file you drag onto the Pico
pico_add_extra_outputs(incrementing_display)
