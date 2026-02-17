@echo off
REM Simple backup utility

echo ========================================
echo         BACKUP UTILITY
echo ========================================
echo.

REM Configuration
set SOURCE_DIR=%CD%
set BACKUP_DIR=%CD%\backup

REM Generate timestamp using WMIC (works across different regional settings)
for /f "tokens=1-3 delims=/ " %%a in ('echo %date%') do (
    set DATE_STAMP=%%c-%%a-%%b
)
for /f "tokens=1-3 delims=:. " %%a in ('echo %time%') do (
    set TIME_STAMP=%%a-%%b-%%c
)
set BACKUP_NAME=backup_%DATE_STAMP%_%TIME_STAMP%

echo Source Directory: %SOURCE_DIR%
echo Backup Directory: %BACKUP_DIR%\%BACKUP_NAME%
echo.

REM Create backup directory
if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%"
mkdir "%BACKUP_DIR%\%BACKUP_NAME%"

echo Starting backup...
echo.

REM Copy files (excluding backup folder)
xcopy "%SOURCE_DIR%\*.*" "%BACKUP_DIR%\%BACKUP_NAME%\" /E /H /C /I /Y /EXCLUDE:backup

if %errorlevel%==0 (
    echo Backup completed successfully!
    echo Backup saved to: %BACKUP_DIR%\%BACKUP_NAME%
) else (
    echo Error: Backup failed!
)

echo.
pause
