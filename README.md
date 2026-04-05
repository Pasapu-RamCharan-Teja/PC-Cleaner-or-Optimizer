# PC-Cleaner-or-Optimizer

# EagleRC's System Cleaner

EagleRC's System Cleaner is a lightweight, automated Windows batch utility designed to optimize your PC. It safely removes useless temporary files and clears system caches to free up space and maintain optimal performance.

## 🚀 Features

* **Automated Admin Check:** The script automatically detects if it has the required permissions and will gracefully restart itself with Administrator privileges if needed.
* **Interactive Menu:** Features a simple command-line interface allowing you to easily start the cleaning process or exit.
* **Comprehensive Junk Removal:** Efficiently deletes files and subdirectories from:
  * User Temp folder (`%temp%`) 
  * Windows Temp folder (`C:\Windows\Temp`) 
  * System Prefetch folder (`C:\Windows\Prefetch`) 
  * Recent files history (`%AppData%\Microsoft\Windows\Recent`) 
* **Network Optimization:** Flushes the DNS cache to resolve potential connectivity issues and clear outdated network data.
* **Custom UI:** Includes a custom animated ASCII art banner upon launch for a stylized terminal experience.

## 📋 Version Information

* **Current Release:** Version v1.2 (Stable) 
* **Author:** EagleRC 

## 🛠️ How to Use

1. Download the `Cleaner.bat` file to your Windows machine.
2. Double-click the file to run it.
3. If prompted by User Account Control (UAC), click **Yes** to grant Administrator privileges (required for cleaning system folders like Prefetch and Windows Temp).
4. Wait for the animated banner to load.
5. Press `1` to start the system clean, or `0` to exit.
6. The script will automatically wipe the targeted directories and display a success message when your PC is optimized.
7. Press any key to close the window.

## ⚠️ Requirements

* **OS:** Windows 10 / 11
* **Permissions:** Administrator rights are required for full functionality.

## 📄 Disclaimer

This tool permanently deletes files in designated temporary and cache directories. While these files are generally safe to remove, use this tool at your own risk. The author is not responsible for any unintended data loss.
