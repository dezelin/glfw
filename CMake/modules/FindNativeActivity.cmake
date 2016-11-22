# Find Android NDK native activity library
#
# NATIVEACTIVITY_INCLUDE_DIRS
# NATIVEACTIVITY_LIBRARIES
# NATIVEACTIVITY_FOUND

find_path(NATIVEACTIVITY_INCLUDE_DIRS NAMES android_native_app_glue.h PATHS
    "$ENV{ANDROID_SDK}/ndk-bundle/sources/android/native_app_glue" NO_CMAKE_FIND_ROOT_PATH)
       
find_path(NATIVEACTIVITY_LIBRARIES NAMES android_native_app_glue.c HINTS
    "$ENV{ANDROID_SDK}/ndk-bundle/sources/android/native_app_glue" NO_CMAKE_FIND_ROOT_PATH)
      
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(NativeActivity DEFAULT_MSG 
    NATIVEACTIVITY_LIBRARIES 
    NATIVEACTIVITY_INCLUDE_DIRS)

mark_as_advanced(NATIVEACTIVITY_INCLUDE_DIRS NATIVEACTIVITY_LIBRARIES)

