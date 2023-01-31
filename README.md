# Build legacy Allegro 4 for Windows step by step

I've recently wanted to revisit some of my old C++ game projects, which were written in Allegro 4. The problem is, it's a legacy library. And while you can still easily install it on Linux (`sudo apt install liballegro4-dev`), on Windows you're pretty much forced to compile it yourself. And it's a real choir, unfortunately. Building all of dependencies yourself and especially getting your hands on older versions of DirectX is painful. I had to spend quite a long time to figure out how to build it, because the documentation and online guides are kind of lacking and out of date. So I made this repository in case anyone is still struggling to build this library nowadays.

## Requirements

Before you can actually start the compilation process you will have to install some dependencies (if you don't have them already installed).

### Git

Install it from [Git's website](https://git-scm.com/downloads). Make sure it's added to PATH environment variable, so that you can use it from the command line.

### CMake

Install it from [CMake's website](https://cmake.org/download/). Make sure it's added to PATH environment variable, so that you can use it from the command line.

### C++ compiler

Tested with MSVC using Visual Studio, but it may also compile with MinGW.

## Step by step instructions

### Clone this repository

```bat
git clone https://github.com/Wichamir/allegro4-windows-build
cd allegro4-windows-build
git submodule update --init
```

### Install dependencies

To install the dependencies we will use vcpkg. In this case, we're using vcpkg in manifest mode, so all the packages are defined in `vcpkg.json`, so you don't have to worry about specifying any of them. Just run the commands below.

```bat
.\vcpkg\bootstrap-vcpkg.bat
.\vcpkg\vcpkg install
```

Unfortunately Allegro 4 also requires older DirectX version (containing ddraw.lib), which is not available in vcpkg, but worry not, because I've bundled it with this repository.

### Run CMake

Run CMake to configure the project.

```bat
cd allegro5
cmake -B build -S . -D CMAKE_TOOLCHAIN_FILE=../dependencies.cmake
explorer build
```

In case you're using Visual Studio you should get a nice .sln file. Now you can just open it.

### Build

In Visual Studio right click the `allegro` project and click `Build`. Now the building process should start. If everything goes well you should get a lib directory with alleg44.lib

### Done!

I hope this helped! If you have any suggestions or something doesn't work, you can open an issue.
