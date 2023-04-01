cmake_minimum_required(VERSION 3.16)

project(cross-compile-for-windows)

add_executable(main src/main.cpp)
add_link_options("-static-libgcc -static-libstdc++")
