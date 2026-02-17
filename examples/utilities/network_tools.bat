@echo off
REM Network diagnostics utility

echo ========================================
echo     NETWORK DIAGNOSTICS UTILITY
echo ========================================
echo.

echo === IP Configuration ===
ipconfig
echo.

echo === Testing Internet Connection ===
echo Pinging Google DNS (8.8.8.8)...
ping -n 4 8.8.8.8
echo.

echo === Testing DNS Resolution ===
echo Resolving www.google.com...
nslookup www.google.com
echo.

echo === Active Network Connections ===
netstat -an | findstr "ESTABLISHED LISTENING"
echo.

echo === Network Adapter Status ===
netsh interface show interface
echo.

echo === Routing Table ===
route print | findstr "0.0.0.0"
echo.

pause
