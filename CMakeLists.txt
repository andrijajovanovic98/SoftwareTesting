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

# Add your main source file (for the main program)
add_executable(main_executable main.cpp)

# Link the test libraries to the main executable (if your main.cpp includes tests)
target_link_libraries(main_executable gtest gtest_main)

# Alternatively, if you want a separate test executable
add_executable(tests main.cpp)  # Használhatod a `tests` nevet a teszt futtatható fájlhoz is
target_link_libraries(tests gtest gtest_main)
