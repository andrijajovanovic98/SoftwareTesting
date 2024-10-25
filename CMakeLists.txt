cmake_minimum_required(VERSION 3.10)
project(YourProjectName)

# Google Test setup
include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/refs/tags/release-1.11.0.zip
)
set(BUILD_GMOCK OFF)
set(BUILD_GTEST ON)
FetchContent_MakeAvailable(googletest)

# Add your main source file
add_executable(${PROJECT_NAME} main.cpp)

# Link the test libraries
target_link_libraries(${PROJECT_NAME} gtest gtest_main)
