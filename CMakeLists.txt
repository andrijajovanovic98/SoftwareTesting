cmake_minimum_required(VERSION 3.10)
project(YourProjectName)

# Google Test setup
include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/refs/tags/release-1.11.0.zip
)
# Set to always build GoogleTest as static libraries
set(BUILD_GTEST ON)
FetchContent_MakeAvailable(googletest)

# Add your source files
add_executable(${PROJECT_NAME} ./main.cpp)

# Add the test executable
add_executable(tests ./test_main.cpp)
target_link_libraries(tests gtest gtest_main)
