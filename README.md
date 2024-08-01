# Scheme Path Solver 🧩
![Scheme](https://img.shields.io/badge/Scheme-005A72?style=for-the-badge&logo=scheme&logoColor=white)
![Racket](https://img.shields.io/badge/Racket-3C6F8C?style=for-the-badge&logo=racket&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)
![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![Issues](https://img.shields.io/github/issues/sancakerkan/SchemePathSolver )
![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [How It Works](#how-it-works)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgements](#acknowledgements)

## Introduction

**Scheme Path Solver** is a Scheme-based utility designed to navigate paths in a grid layout. The program calculates the sequence of movements needed to travel from a starting point to a finish point in a grid where black cells represent walls and white cells are navigable. The starting point is always at `[0,0]`, and the finish point is denoted by the letter 'F'.

## Features

- **Grid Dimensions:** Retrieve the grid’s height and width using `getHeight` and `getWidth` functions.
- **Cell Content:** Access the letter at any grid position with the `getLetter` function.
- **Path Solution:** Solve the path with the `solvePath` function, which returns a sequence of movements.

## Installation

### Prerequisites

- Racket Scheme interpreter. Download it from [here](https://download.racket-lang.org/).

### Cloning the Repository

1. **Using Git:**
    - Clone the repository using the following command:
      ```bash
      git clone https://github.com/sancakerkan/SchemePathSolver
      ```
    - Navigate to the project directory:
      ```bash
      cd SchemePathSolver 
      ```

2. **Alternatively, Download ZIP:**
    - [Download ZIP](https://github.com/sancakerkan/SchemePathSolver/archive/refs/heads/main.zip)

## Usage

### Running the Program

1. **Using Racket:**
    - Open the Racket IDE.
    - Set the language to "The Racket Language".
    - Open the file `src/PathSolver.rkt`.
    - Run the program.

## How It Works

The program provides a solution as a sequence of movements such as "D D R R R R D D". This sequence indicates movements down 2 times, right 4 times, and down 2 more times. The grid layout ensures that there is only one solution with a single possible move for each step.

## Contributing

We welcome contributions to improve the project! To contribute:

1. **Fork the Repository:** Create your own copy of the project.
2. **Create a Branch:** Create a feature branch for your changes.
3. **Make Changes:** Implement new features or fix bugs.
4. **Submit a Pull Request:** Propose your changes to be merged.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Acknowledgements

- Special thanks to **Elif Aysu Kürşad** and **Metehan Tüter** for their valuable contributions and support.
