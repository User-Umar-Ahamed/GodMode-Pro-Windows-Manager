@echo off
title GodMode Pro - Windows God Mode Manager (By Umar Ahamed)
color 0A

:: ===== Admin Check =====
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo ==================================
    echo   Please run as Administrator!
    echo ==================================
    pause
    exit
)

:: ===== Menu =====
:menu
cls
echo ==========================================
echo      GOD MODE MANAGER (By Umar Ahamed)
echo ==========================================
echo 1. Enable God Mode
echo 2. Disable God Mode
echo 3. Exit
echo ==========================================

set /p choice=Enter your choice:

:: Prevent empty input
if "%choice%"=="" (
    echo Please enter a valid option!
    pause
    goto menu
)

if "%choice%"=="1" goto enable
if "%choice%"=="2" goto disable
if "%choice%"=="3" exit

echo Invalid choice!
pause
goto menu

:: ===== Enable God Mode =====
:enable
set "folder=%USERPROFILE%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}"

if exist "%folder%" (
    echo ----------------------------------
    echo God Mode already exists!
    echo ----------------------------------
) else (
    mkdir "%folder%"
    echo ----------------------------------
    echo God Mode ENABLED successfully!
    echo Location: Desktop
    echo ----------------------------------
)

pause
goto menu

:: ===== Disable God Mode =====
:disable
set "folder=%USERPROFILE%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}"

if exist "%folder%" (
    rmdir "%folder%" >nul 2>&1
    echo ----------------------------------
    echo God Mode DISABLED successfully!
    echo ----------------------------------
) else (
    echo ----------------------------------
    echo God Mode not found on Desktop!
    echo ----------------------------------
)

pause
goto menu