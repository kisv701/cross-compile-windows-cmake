
# CMake toolchain file for compiling C and C++ for Windows .exe files in Ubuntu
This project contains an example of a CMake toolchain file that allows programs to be compiled into Windows .exe from an Ubuntu host system.

## Prerequisites

Install [MinGW](https://www.mingw-w64.org/) using `sudo apt install mingw-w64` and CMake using `sudo apt install cmake`.

## Building this example

```
$ mkdir build
$ cd build
$ cmake -DCMAKE_TOOLCHAIN_FILE=../windows_toolchain.cmake ..
$ make
```

## Run the example

Make sure the `main.exe` file is available from Powershell or CMD,
then run with `> .\main.exe`.
