# Set CMake minimum version
cmake_minimum_required(VERSION 3.10)

# Set the project name
project(main)

# Add an executable
add_executable(main src/main.cpp)
set_target_properties(main PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/../bin")

# Automatically run the program after building
add_custom_command(
  TARGET main POST_BUILD
  COMMAND "${CMAKE_BINARY_DIR}/../bin/main"
  COMMENT "Output:"
  VERBATIM
)