# Scheme Path Solver

Welcome to Scheme Path Solver, a simple program written in Scheme that helps you navigate through paths represented in a grid layout.

## Overview

Path Solver is a Scheme project designed to find the correct movements from the starting point to the finish point in a given path. It solves paths represented as grids, where black cells act as walls and white cells are navigable areas. The starting point is always at [0,0], and the finish point is marked with the letter 'F'.

## Usage

To run this project, you'll need to use the Racket Scheme interpreter. Follow these steps for setup:
1. Download and install the Racket application from [here](https://download.racket-lang.org/).
2. Open the Racket program and set the language to "The Racket Language".
3. Use `#lang scheme` or `#lang racket` at the beginning of every file.

You can also find instructions [here](Path%20Solver%20Instructions.pdf).


## Features

- **Get Height and Width**: Determine the height and width of the path grid with `getHeight` and `getWidth` functions.
- **Get Letter**: Retrieve the letter at a specific position in the path grid with the `getLetter` function.
- **Solve Path**: Find the solution for the path using the `solvePath` function, returning a sequence of movements.

## How It Works

The solution for the path is represented as a sequence of movements, such as "D D R R R R D D". This sequence indicates moving down 2 times, then moving right 4 times, and finally moving down 2 times. It's important to note that the path is not a maze and has only one solution, with one possible next square for each move.

## Contribution

Feel free to contribute to this project by forking the repository, adding new features, or fixing bugs. Submit your changes with a pull request.

# Special Thanks

I would like to express my gratitude to the following friends for their contributions to the successful completion of this project:

- **Elif Aysu Kürşad**
- **Metehan Tüter**
  
I am grateful for your contributions and assistance to the project.

Thanks to your valuable contributions, this project has been successfully completed.
