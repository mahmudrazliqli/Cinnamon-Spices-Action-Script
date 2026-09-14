# Cinnamon Nemo Make Actions

A collection of custom right-click context menu actions for the **Cinnamon Desktop** (Nemo File Manager). These actions allow you to quickly execute common `make` commands directly from a project folder without opening a terminal manually.

## 🚀 Features

*   **Make All**: Compiles the project. 
    *   *Success*: Waits 3 seconds then closes.
    *   *Error*: Shows a blinking red error banner and waits for user input.
*   **Make Clean**: Cleans the build directory.
*   **Make Run**: Runs the compiled executable.
*   **Smart Terminal**: Automatically changes directory (`cd`) into the selected folder before running commands.
*   **Visual Feedback**: Uses ANSI colors to clearly distinguish between success and failure states.

## 📋 Prerequisites

*   Linux Distribution with **Cinnamon Desktop Environment**.
*   **Nemo** File Manager.
*   `make` and a compiler (like `gcc`/`g++`) installed on your system.

## 🛠️ Installation

1.  Download or clone this repository.
2.  Open your terminal in the folder containing these files.
3.  Run the provided installer script:

```bash
chmod +x installer.sh
./installer.sh
