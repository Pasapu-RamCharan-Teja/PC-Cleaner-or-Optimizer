# PC-Cleaner-or-Optimizer

# EagleRC's System Cleaner

EagleRC's System Cleaner is a lightweight, automated Windows batch utility designed to optimize your PC[cite: 9, 15]. It safely removes useless temporary files and clears system caches to free up space and maintain optimal performance[cite: 2, 14].

## 🚀 Features

* **Automated Admin Check:** The script automatically detects if it has the required permissions and will gracefully restart itself with Administrator privileges if needed[cite: 1, 2].
* **Interactive Menu:** Features a simple command-line interface allowing you to easily start the cleaning process or exit[cite: 10, 11].
* **Comprehensive Junk Removal:** Efficiently deletes files and subdirectories from:
  * User Temp folder (`%temp%`) [cite: 13]
  * Windows Temp folder (`C:\Windows\Temp`) [cite: 13]
  * System Prefetch folder (`C:\Windows\Prefetch`) [cite: 13]
  * Recent files history (`%AppData%\Microsoft\Windows\Recent`) [cite: 13]
* **Network Optimization:** Flushes the DNS cache to resolve potential connectivity issues and clear outdated network data[cite: 13].
* **Custom UI:** Includes a custom animated ASCII art banner upon launch for a stylized terminal experience[cite: 3, 17].

## 📋 Version Information

* **Current Release:** Version v1.2 (Stable) [cite: 7]
* **Author:** EagleRC [cite: 2, 16]

## 🛠️ How to Use

1. Download the `Cleaner.bat` file to your Windows machine.
2. Double-click the file to run it.
3. If prompted by User Account Control (UAC), click **Yes** to grant Administrator privileges (required for cleaning system folders like Prefetch and Windows Temp)[cite: 1, 2].
4. Wait for the animated banner to load[cite: 3, 17].
5. Press `1` to start the system clean, or `0` to exit[cite: 10, 11].
6. The script will automatically wipe the targeted directories and display a success message when your PC is optimized[cite: 13, 14, 15].
7. Press any key to close the window[cite: 17].

## ⚠️ Requirements

* **OS:** Windows 10 / 11
* **Permissions:** Administrator rights are required for full functionality[cite: 1].

## 📄 Disclaimer

This tool permanently deletes files in designated temporary and cache directories[cite: 13]. While these files are generally safe to remove, use this tool at your own risk. The author is not responsible for any unintended data loss.
