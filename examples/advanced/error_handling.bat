@echo off
REM Error handling in batch files

echo === Basic error handling ===
dir nonexistent_folder 2>nul
if errorlevel 1 (
    echo Error: Folder not found!
) else (
    echo Folder found!
)

echo.
echo === Error level checking ===
ping 127.0.0.1 -n 1 >nul
if %errorlevel%==0 (
    echo Success: Ping succeeded
) else (
    echo Error: Ping failed
)

echo.
echo === Try-Catch simulation ===
call :tryCatch
goto :after_catch

:tryCatch
REM Simulate risky operation
dir nonexistent >nul 2>&1
if errorlevel 1 (
    echo Caught an error!
    goto :catch
)
echo No error occurred
exit /b 0

:catch
echo Handling the error...
exit /b 1

:after_catch
echo Error handling completed

echo.
echo === Enabling error checking ===
setlocal enabledelayedexpansion
set /a x=5/0 2>nul
if !errorlevel! neq 0 (
    echo Division by zero error caught!
)

pause
