::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBhcTRaDAE+1EbsQ5+n//NaXsEQLVeEmNYLU3rHDN+kd7krzZtsg13NUpO4NCxddPjGifAw4rC5rlUvLPsST0w==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJHqI8UM+LQlHcCeOOWq0A6dS7fD+jw==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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
    timeout /t 2 >nul
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: ==========================================================
::   EagleRC - Temp File & Folder Cleaner
::   Author : EagleRC
::   Purpose: Clean Temp, Prefetch, Recent, and Caches
::   Branding: "Eagle RC!!"
:: ==========================================================

cls
echo.
call :animate "   ███████╗ █████╗  ██████╗ ██╗     ███████╗        ██████╗  ██████╗"
call :animate "   ██╔════╝██╔══██╗██╔════╝ ██║     ██╔════╝        ██╔══██╗██╔════╝"
call :animate "   █████╗  ███████║██║  ███╗██║     █████╗          ██████╔╝██║     "
call :animate "   ██╔══╝  ██╔══██║██║   ██║██║     ██╔══╝          ██╔══██╗██║     "
call :animate "   ███████╗██║  ██║╚██████╔╝███████╗███████╗        ██║  ██║╚██████╗"
call :animate "   ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝        ╚═╝  ╚═╝ ╚═════╝"
echo.
call :animate "                       ██████╗  ██████╗ ████████╗"
call :animate "                       ██╔══██╗██╔═══██╗╚══██╔══╝"
call :animate "                       ██████╔╝██║   ██║   ██║   "
call :animate "                       ██╔══██╗██║   ██║   ██║   "
call :animate "                       ██████╔╝╚██████╔╝   ██║   "
call :animate "                       ╚═════╝  ╚═════╝    ╚═╝   "
echo.
echo                           Version : v1.2 (Stable)
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
choice /c 10 /n /m "Your Choice: "

if errorlevel 2 exit
if errorlevel 1 goto CLEAN

:CLEAN
cls
echo.
echo ==========================================================
echo [*] Cleaning in progress... please wait.
echo ==========================================================
echo.

echo [~] Cleaning User Temp folder...
del /s /f /q "%temp%\*.*" >nul 2>&1
for /d %%p in ("%temp%\*") do rmdir /s /q "%%p" >nul 2>&1

echo [~] Cleaning Windows Temp folder...
del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
for /d %%p in ("C:\Windows\Temp\*") do rmdir /s /q "%%p" >nul 2>&1

echo [~] Cleaning Prefetch folder...
del /s /f /q "C:\Windows\Prefetch\*.*" >nul 2>&1
for /d %%p in ("C:\Windows\Prefetch\*") do rmdir /s /q "%%p" >nul 2>&1

echo [~] Cleaning Recent files...
del /s /f /q "%AppData%\Microsoft\Windows\Recent\*.*" >nul 2>&1
for /d %%p in ("%AppData%\Microsoft\Windows\Recent\*") do rmdir /s /q "%%p" >nul 2>&1

echo [~] Flushing DNS Cache...
ipconfig /flushdns >nul 2>&1

echo.
echo ==========================================================
echo      SUCCESS: All Useless Files and Folders Deleted!
echo                 Your PC is Optimized now.
echo ==========================================================
echo.
echo                   ---Powered by EagleRC!---
echo.
pause
exit

:: ================= ANIMATION FUNCTION =================
:animate
echo %~1
powershell -command "Start-Sleep -Milliseconds 15"
exit /b