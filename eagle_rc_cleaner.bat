@echo off
chcp 65001 >nul
title EagleRC's System Cleaner
color 0A

:: ================= ADMIN CHECK =================
net session >nul 2>&1
if %errorlevel% neq 0 (
    cls
    echo ==========================================================
    echo   Administrator Privileges Required!
    echo   Restarting EagleRC's Cleaner as Admin...
    echo ==========================================================
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

cls
echo.

:: ================= FAST ANIMATION =================
call :animate "   ███████╗ █████╗  ██████╗ ██╗     ███████╗        ██████╗  ██████╗"
call :animate "   ██╔════╝██╔══██╗██╔════╝ ██║     ██╔════╝        ██╔══██╗██╔════╝"
call :animate "   █████╗  ███████║██║  ███╗██║     █████╗          ██████╔╝██║     "
call :animate "   ██╔══╝  ██╔══██║██║   ██║██║     ██╔══╝          ██╔══██╗██║     "
call :animate "   ███████╗██║  ██║╚██████╔╝███████╗███████╗        ██║  ██║╚██████╗"
call :animate "   ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝        ╚═╝  ╚═╝ ╚═════╝"

echo.
echo                           Version : v1.3 (High Speed)
echo.
echo                 E A G L E   R C ' S   C L E A N E R
echo.
echo ==========================================================
echo            WELCOME TO EagleRC's SYSTEM CLEANER
echo ==========================================================
echo.

:MENU
echo Press [1] to Start System Clean
echo Press [0] to Exit
echo.
set /p "choice=Your Choice: "

if "%choice%"=="0" exit /b
if "%choice%"=="1" goto CLEAN
goto MENU


:CLEAN
cls
echo.
echo ==========================================================
echo [*] Cleaning in progress...
echo ==========================================================
echo.

echo [~] Cleaning User Temp...
del /s /f /q "%temp%\*.*" >nul 2>&1
for /d %%p in ("%temp%\*") do rmdir /s /q "%%p" >nul 2>&1

echo [~] Cleaning Windows Temp...
del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
for /d %%p in ("C:\Windows\Temp\*") do rmdir /s /q "%%p" >nul 2>&1

echo [~] Cleaning Prefetch...
del /s /f /q "C:\Windows\Prefetch\*.*" >nul 2>&1
for /d %%p in ("C:\Windows\Prefetch\*") do rmdir /s /q "%%p" >nul 2>&1

echo [~] Cleaning Windows Update Cache...

:: Stop Windows Update service temporarily
net stop wuauserv >nul 2>&1

:: Wait 2 seconds for the service to stop
timeout /t 2 /nobreak >nul

del /s /f /q "C:\Windows\SoftwareDistribution\Download\*.*" >nul 2>&1
for /d %%p in ("C:\Windows\SoftwareDistribution\Download\*") do rmdir /s /q "%%p" >nul 2>&1

:: Wait 2 seconds before restarting the service
timeout /t 2 /nobreak >nul

:: Restart Windows Update service
net start wuauserv >nul 2>&1

echo [~] Cleaning DirectX and GPU Shader Caches...

:: DirectX Shader Cache
del /s /f /q "%LocalAppData%\D3DSCache\*.*" >nul 2>&1
for /d %%p in ("%LocalAppData%\D3DSCache\*") do rmdir /s /q "%%p" >nul 2>&1

:: NVIDIA Caches
del /s /f /q "%LocalAppData%\NVIDIA\GLCache\*.*" >nul 2>&1
for /d %%p in ("%LocalAppData%\NVIDIA\GLCache\*") do rmdir /s /q "%%p" >nul 2>&1

del /s /f /q "%LocalAppData%\NVIDIA\ComputeCache\*.*" >nul 2>&1
for /d %%p in ("%LocalAppData%\NVIDIA\ComputeCache\*") do rmdir /s /q "%%p" >nul 2>&1

:: AMD Caches
del /s /f /q "%LocalAppData%\AMD\DxCache\*.*" >nul 2>&1
for /d %%p in ("%LocalAppData%\AMD\DxCache\*") do rmdir /s /q "%%p" >nul 2>&1

del /s /f /q "%LocalAppData%\AMD\GLCache\*.*" >nul 2>&1
for /d %%p in ("%LocalAppData%\AMD\GLCache\*") do rmdir /s /q "%%p" >nul 2>&1


echo.
echo ==========================================================
echo   OPTIONAL: View Full C: Drive Tree Structure
echo ==========================================================
echo   This will open a separate window showing the full
echo   folder tree of your C: drive. It may take a while
echo   and does NOT require administrator privileges.
echo.
echo   Press [1] to Run C: Drive Tree
echo   Press [0] to Skip and Continue
echo.

choice /c 10 /n /t 5 /d 0 /m "Your Choice: "

if errorlevel 2 goto SKIP_TREE
if errorlevel 1 goto RUN_TREE


:RUN_TREE
echo.
echo [~] Opening C: Drive Tree in a separate window...

start "C: Drive Tree" cmd /c "tree C:\ & echo. & echo === Tree Complete === & pause"

echo [~] Tree window launched. Continuing cleanup...
goto AFTER_TREE


:SKIP_TREE
echo.
echo [~] Skipped C: Drive Tree. Continuing cleanup...
goto AFTER_TREE


:AFTER_TREE

echo [~] Emptying Recycle Bin...
powershell -NoProfile -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue" >nul 2>&1

echo [~] Flushing DNS Cache...
ipconfig /flushdns >nul 2>&1

echo.
echo ==========================================================
echo      SUCCESS: Cleanup Complete!
echo ==========================================================
echo.
echo                   ---Powered by EagleRC!---
echo.
pause
exit /b


:: ================= FAST ANIMATION FUNCTION =================
:animate
echo %~1

:: Reduced delay for a faster, clearer transition
powershell -NoProfile -Command "Start-Sleep -Milliseconds 5"

exit /b
