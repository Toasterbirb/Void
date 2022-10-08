# Install script for directory: /home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/SDL2_mixer/html/api" TYPE DIRECTORY FILES "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/SDL2_mixer/html" TYPE FILE FILES
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/images/logo.svg"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/images/logo130.gif"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/changelog.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/developers.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/documentation.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/documentation_bugs.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/documentation_example_code.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/documentation_format_overview.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/documentation_tools.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/documentation_tools_flac.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/documentation_tools_metaflac.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/faq.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/favicon.ico"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/features.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/flac.css"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/format.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/id.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/index.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/license.html"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL_mixer/external/flac/doc/html/ogg_mapping.html"
    )
endif()

