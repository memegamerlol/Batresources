@echo off
REM File cleanup utility

echo ========================================
echo        FILE CLEANUP UTILITY
echo ========================================
echo.

echo This utility will clean up temporary files and folders.
echo.
echo WARNING: This will delete files from:
echo - Windows Temp folder
echo - User Temp folder
echo - Recycle Bin (if run as administrator)
echo.

set /p confirm=Do you want to continue? (Y/N): 
if /i not "%confirm%"=="Y" (
    echo Cleanup cancelled.
    pause
    exit /b
)

echo.
echo Starting cleanup...
echo.

REM Check for administrator privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo WARNING: Administrator privileges required for full cleanup
    echo Some operations will be skipped
    set ADMIN=0
) else (
    set ADMIN=1
)

REM Clean Windows temp folder
echo Cleaning Windows Temp folder...
del /q /f /s %WINDIR%\Temp\*.* 2>nul
for /d %%p in (%WINDIR%\Temp\*) do rmdir "%%p" /s /q 2>nul

REM Clean user temp folder
echo Cleaning User Temp folder...
del /q /f /s %TEMP%\*.* 2>nul
for /d %%p in (%TEMP%\*) do rmdir "%%p" /s /q 2>nul

REM Clean recycle bin (only with admin rights)
if %ADMIN%==1 (
    echo Cleaning Recycle Bin...
    rd /s /q %systemdrive%\$Recycle.bin 2>nul
) else (
    echo Skipping Recycle Bin (requires admin)
)

REM Clean prefetch (only with admin rights)
if %ADMIN%==1 (
    echo Cleaning Prefetch...
    del /q /f /s %WINDIR%\Prefetch\*.* 2>nul
) else (
    echo Skipping Prefetch (requires admin)
)

echo.
echo Cleanup completed!
echo.
pause
