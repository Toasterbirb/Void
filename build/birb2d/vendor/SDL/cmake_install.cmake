# Install script for directory: /home/toasterbirb/git/void/birb2d/vendor/SDL

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/libSDL2maind.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/libSDL2d.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/libSDL2_test.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2mainTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2mainTargets.cmake"
         "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2mainTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2mainTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2mainTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2mainTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2mainTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2staticTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2staticTargets.cmake"
         "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2staticTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2staticTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2staticTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2staticTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2staticTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2testTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2testTargets.cmake"
         "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2testTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2testTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2testTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2testTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2testTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES
    "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/SDL2Config.cmake"
    "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/SDL2ConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_assert.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_atomic.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_audio.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_bits.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_blendmode.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_clipboard.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_copying.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_cpuinfo.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_egl.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_endian.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_error.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_events.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_filesystem.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_gamecontroller.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_gesture.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_guid.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_haptic.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_hidapi.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_hints.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_joystick.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_keyboard.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_keycode.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_loadso.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_locale.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_log.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_main.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_messagebox.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_metal.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_misc.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_mouse.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_mutex.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_name.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_opengl.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_opengl_glext.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_opengles.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_opengles2.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_opengles2_gl2.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_opengles2_gl2ext.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_opengles2_gl2platform.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_opengles2_khrplatform.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_pixels.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_platform.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_power.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_quit.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_rect.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_render.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_rwops.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_scancode.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_sensor.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_shape.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_stdinc.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_surface.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_system.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_syswm.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_test.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_test_assert.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_test_common.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_test_compare.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_test_crc32.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_test_font.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_test_fuzzer.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_test_harness.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_test_images.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_test_log.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_test_md5.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_test_memory.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_test_random.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_thread.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_timer.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_touch.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_types.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_version.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_video.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/SDL_vulkan.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/begin_code.h"
    "/home/toasterbirb/git/void/birb2d/vendor/SDL/include/close_code.h"
    "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/include/SDL_revision.h"
    "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/include-config-debug/SDL_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/pkgconfig" TYPE FILE FILES "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/home/toasterbirb/git/void/build/birb2d/vendor/SDL/sdl2-config")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/home/toasterbirb/git/void/birb2d/vendor/SDL/sdl2.m4")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2" TYPE FILE FILES "/home/toasterbirb/git/void/birb2d/vendor/SDL/LICENSE.txt")
endif()

