# 🦅 EagleRC's System Cleaner

EagleRC's System Cleaner is a lightweight Windows utility designed to clean unnecessary temporary files, system caches, Windows Update cache, GPU shader caches, the Recycle Bin, and DNS cache.

The project provides both a traditional Windows batch cleaner and a PowerShell-based remote launcher for convenient execution.

---

## 🚀 Features

- **Administrator Privileges**
  - Automatically runs the cleaner with Administrator privileges when required.
  - Required for system-level cleanup operations.

- **Interactive Menu**
  - Simple command-line interface.
  - Press `1` to start cleaning.
  - Press `0` to exit.

- **User Temp Cleanup**
  - Cleans files and folders from:
    - `%temp%`

- **Windows Temp Cleanup**
  - Cleans:
    - `C:\Windows\Temp`

- **Prefetch Cleanup**
  - Cleans:
    - `C:\Windows\Prefetch`

- **Windows Update Cache Cleanup**
  - Temporarily stops the Windows Update service.
  - Clears the Windows Update download cache.
  - Automatically starts the Windows Update service again.

- **DirectX Shader Cache Cleanup**
  - Cleans:
    - `%LocalAppData%\D3DSCache`

- **NVIDIA Cache Cleanup**
  - Cleans:
    - `%LocalAppData%\NVIDIA\GLCache`
    - `%LocalAppData%\NVIDIA\ComputeCache`

- **AMD Cache Cleanup**
  - Cleans:
    - `%LocalAppData%\AMD\DxCache`
    - `%LocalAppData%\AMD\GLCache`

- **Recycle Bin Cleanup**
  - Empties the Windows Recycle Bin using PowerShell.

- **DNS Cache Flush**
  - Flushes the Windows DNS resolver cache.

- **Optional C: Drive Tree Viewer**
  - Provides an optional full directory tree view of the C: drive.
  - Opens the tree in a separate window.
  - Includes a 5-second automatic skip timer.

- **Custom Terminal Interface**
  - Includes an animated EagleRC ASCII banner.
  - Fast 5ms animation delay.

- **PowerShell Remote Launcher**
  - Allows the latest version of the cleaner to be launched directly from PowerShell.
  - No manual `.bat` download is required.

- **Automatic Temporary File Cleanup**
  - The PowerShell launcher removes the downloaded copy of `Cleaner.bat` after the cleaner finishes.

---

# ⚡ Quick Run

The easiest way to launch EagleRC's System Cleaner is through PowerShell.

Open **PowerShell** and run:

```powershell
irm https://tinyurl.com/eagle-rc-cleaner | iex
