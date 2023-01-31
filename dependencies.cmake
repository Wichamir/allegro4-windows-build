# This file is meant to be used as a toolchain file for CMake, when compiling Allegro 4.
# It sets paths to the dependencies needed by Allegro.

# DirectX
set(DIRECTX_PATH "${CMAKE_SOURCE_DIR}/../directx")
set(DDRAW_INCLUDE_DIR "${DIRECTX_PATH}/include")
set(DDRAW_LIBRARY "${DIRECTX_PATH}/lib/ddraw.lib")
set(DINPUT_INCLUDE_DIR "${DIRECTX_PATH}/include")
set(DINPUT_LIBRARY "${DIRECTX_PATH}/lib/dinput8.lib")
set(DSOUND_INCLUDE_DIR "${DIRECTX_PATH}/include")
set(DSOUND_LIBRARY "${DIRECTX_PATH}/lib/dsound.lib")
set(DXGUID_LIBRARY "${DIRECTX_PATH}/lib/dxguid.lib")

# vcpkg
set(VCPKG_TRIPLET x86-windows)
set(VCPKG_INSTALLED "vcpkg_installed/${VCPKG_TRIPLET}")
set(PKG_CONFIG_EXECUTABLE "${VCPKG_INSTALLED}/tools/pkgconf/pkgconf.exe")
set(ZLIB_INCLUDE_DIR "${VCPKG_INSTALLED}/include")
set(ZLIB_LIBRARY "${VCPKG_INSTALLED}/lib/zlib.lib")
set(PNG_PNG_INCLUDE_DIR "${VCPKG_INSTALLED}/include/libpng16")
set(PNG_LIBRARY "${VCPKG_INSTALLED}/lib/libpng16.lib")
set(OGG_INCLUDE_DIR "${VCPKG_INSTALLED}/include/ogg")
set(OGG_LIBRARY "${VCPKG_INSTALLED}/lib/ogg.lib")
set(VORBIS_INCLUDE_DIR "${VCPKG_INSTALLED}/include/vorbis")
set(VORBIS_LIBRARY "${VCPKG_INSTALLED}/lib/vorbis.lib")
