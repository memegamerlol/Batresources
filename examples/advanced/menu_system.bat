@echo off
REM Interactive menu system in batch files

:menu
cls
echo ========================================
echo           MAIN MENU
echo ========================================
echo 1. Show System Information
echo 2. List Files in Current Directory
echo 3. Display Date and Time
echo 4. Network Information
echo 5. Create a File
echo 6. Exit
echo ========================================
echo.
set /p choice=Enter your choice (1-6): 

if "%choice%"=="1" goto sysinfo
if "%choice%"=="2" goto listfiles
if "%choice%"=="3" goto datetime
if "%choice%"=="4" goto network
if "%choice%"=="5" goto createfile
if "%choice%"=="6" goto exit
echo Invalid choice! Please try again.
timeout /t 2 >nul
goto menu

:sysinfo
cls
echo === System Information ===
systeminfo | findstr /C:"OS Name" /C:"OS Version" /C:"System Type"
echo.
pause
goto menu

:listfiles
cls
echo === Files in Current Directory ===
dir /b
echo.
pause
goto menu

:datetime
cls
echo === Current Date and Time ===
echo Date: %date%
echo Time: %time%
echo.
pause
goto menu

:network
cls
echo === Network Information ===
ipconfig | findstr /C:"IPv4" /C:"Subnet" /C:"Gateway"
echo.
pause
goto menu

:createfile
cls
set /p filename=Enter filename to create: 
echo Sample content > %filename%
echo File created: %filename%
echo.
pause
goto menu

:exit
echo Goodbye!
exit
