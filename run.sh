#!/bin/bash

# Check if build directory exists, if not create it
if [ ! -d "build" ]; then
  mkdir build
fi

# Change to build directory
cd build

# Run cmake to configure the project
cmake ..

# Build the project
cmake --build . 

# Make clean
make clean