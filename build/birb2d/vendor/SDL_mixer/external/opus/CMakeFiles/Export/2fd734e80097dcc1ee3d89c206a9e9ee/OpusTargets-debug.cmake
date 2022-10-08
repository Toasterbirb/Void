#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Opus::opus" for configuration "Debug"
set_property(TARGET Opus::opus APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Opus::opus PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib64/libopus.so.0.8.0"
  IMPORTED_SONAME_DEBUG "libopus.so.0"
  )

list(APPEND _cmake_import_check_targets Opus::opus )
list(APPEND _cmake_import_check_files_for_Opus::opus "${_IMPORT_PREFIX}/lib64/libopus.so.0.8.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
