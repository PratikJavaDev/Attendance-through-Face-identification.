@echo off
title ANMS Face Attendance System
cd /d "%~dp0"
if not exist ".venv\Scripts\python.exe" (
    echo [ERROR] Virtual environment not found at .venv.
    pause
    exit /b 1
)
echo Starting Face Attendance System...
.venv\Scripts\python.exe main.py
if errorlevel 1 (
    echo.
    echo Application exited with an error.
    pause
)
