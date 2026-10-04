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
* **Windows Update Cache Cleanup:** Safely stops the Windows Update service, clears the SoftwareDistribution download cache, and restarts the service automatically.
* **DirectX & GPU Shader Cache Cleanup:** Removes DirectX shader cache (`D3DSCache`) along with NVIDIA (`GLCache`, `ComputeCache`) and AMD (`DxCache`, `GLCache`) GPU caches to resolve graphical glitches and free up space.
* **Recycle Bin Emptying:** Automatically empties the Recycle Bin using PowerShell.
* **Network Optimization:** Flushes the DNS cache to resolve potential connectivity issues and clear outdated network data.
* **Optional C: Drive Tree Viewer:** Offers an optional (non-admin) full directory tree view of the C: drive in a separate window, with a 5-second auto-skip timer.
* **Custom UI:** Includes a custom animated ASCII art banner upon launch for a stylized terminal experience.
* **High-Speed Animation:** Optimized banner animation delay (5ms) for a fast, snappy startup.

## 📋 Version Information

* **Current Release:** Version v1.3 (High Speed)
* **Author:** EagleRC

## 🛠️ How to Use

1. Download the `eagle_rc_cleaner.bat` file to your Windows machine.
2. Double-click the file to run it.
3. If prompted by User Account Control (UAC), click **Yes** to grant Administrator privileges (required for cleaning system folders like Prefetch, Windows Temp, and Windows Update Cache).
4. Wait for the animated banner to load.
5. Press `1` to start the system clean, or `0` to exit.
6. The script will automatically wipe the targeted directories, clear GPU shader caches, empty the Recycle Bin, and flush the DNS cache.
7. When prompted, optionally press `1` to open a C: drive tree view in a separate window, or press `0` (or wait 5 seconds) to skip.
8. The script will display a success message when your PC is optimized.
9. Press any key to close the window.

## ⚠️ Requirements

* **OS:** Windows 10 / 11
* **Permissions:** Administrator rights are required for full functionality (Prefetch, Windows Temp, Windows Update Cache, and Recycle Bin cleaning).

## 📄 Disclaimer

This tool permanently deletes files in designated temporary, cache, and update directories, and empties the Recycle Bin. While these files are generally safe to remove, use this tool at your own risk. The author is not responsible for any unintended data loss.

## 📝 Changelog

### v1.3 (High Speed)
* Added Windows Update Cache cleanup (with automatic service stop/start).
* Added DirectX and GPU shader cache cleanup (NVIDIA & AMD).
* Added Recycle Bin emptying via PowerShell.
* Added optional C: Drive Tree viewer with 5-second auto-skip.
* Removed Recent files history cleanup.
* Optimized banner animation speed for faster startup.
