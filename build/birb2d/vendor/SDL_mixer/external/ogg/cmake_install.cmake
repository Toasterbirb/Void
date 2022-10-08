# Install script for directory: /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libogg.so.0.8.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libogg.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES
    "/home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/ogg/libogg.so.0.8.5"
    "/home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/ogg/libogg.so.0"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libogg.so.0.8.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libogg.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libogg.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libogg.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libogg.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES "/home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/ogg/libogg.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libogg.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libogg.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libogg.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/pkgconfig" TYPE FILE FILES "/home/toasterbirb/git/void/build/birb2d/vendor/SDL_mixer/external/ogg/ogg.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/SDL2_mixer/html" TYPE FILE FILES
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/framing.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/index.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/oggstream.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/ogg-multiplex.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/fish_xiph_org.png"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/multiplex1.png"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/packets.png"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/pages.png"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/stream.png"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/vorbisword2.png"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/white-ogg.png"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/white-xifish.png"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/rfc3533.txt"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/rfc5334.txt"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/skeleton.html"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/SDL2_mixer/html" TYPE DIRECTORY FILES "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/ogg/doc/libogg")
endif()

