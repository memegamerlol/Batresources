@echo off
REM System information utility

echo ========================================
echo       SYSTEM INFORMATION UTILITY
echo ========================================
echo.

echo Computer Name: %COMPUTERNAME%
echo Username: %USERNAME%
echo User Domain: %USERDOMAIN%
echo.

echo === Operating System ===
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
echo.

echo === Hardware ===
systeminfo | findstr /B /C:"System Type" /C:"Processor" /C:"Total Physical Memory"
echo.

echo === Disk Space ===
wmic logicaldisk get name,size,freespace /format:table
echo.

echo === Network Adapters ===
ipconfig | findstr /C:"Adapter" /C:"IPv4"
echo.

echo === Current Directory ===
echo %CD%
echo.

pause
