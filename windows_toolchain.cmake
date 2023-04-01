cmake_minimum_required(VERSION 3.16)

# Assuming mingw-w64 was installed, for example with 'sudo apt-get install mingw-w64'
# 1) mkdir build && cd build
# 2) cmake -DCMAKE_TOOLCHAIN_FILE=../windows_toolchain.cmake ..
# 3) make
# 4) Run main.exe from Powershell in Windows.

set(CMAKE_SYSTEM_NAME Windows)
set(TOOLCHAIN_PREFIX "i686-w64-mingw32")


# Cross compilers for C and C++.
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}-g++)

# Target environment on the build host system.
set(CMAKE_FIND_ROOT_PATH /usr/${TOOLCHAIN_PREFIX})


# Modify default behavior of FIND_XXX() commands.
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Lets statically link -static-libgcc and -static-libstdc++
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static")
