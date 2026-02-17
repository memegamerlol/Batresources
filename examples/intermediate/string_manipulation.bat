@echo off
REM String manipulation in batch files

echo === String length ===
set STRING=Hello World
echo String: %STRING%
echo Length: (use external tools for accurate length)

echo.
echo === Substring extraction ===
set STRING=HelloWorld
echo Original: %STRING%
echo First 5 chars: %STRING:~0,5%
echo Last 5 chars: %STRING:~-5%
echo From position 5: %STRING:~5%

echo.
echo === String replacement ===
set STRING=Hello World, Hello Universe
echo Original: %STRING%
set REPLACED=%STRING:Hello=Hi%
echo Replaced: %REPLACED%

echo.
echo === Remove substring ===
set STRING=Hello_World
echo Original: %STRING%
set REMOVED=%STRING:_=%
echo Removed underscore: %REMOVED%

echo.
echo === Case conversion ===
set STRING=Hello World
echo Uppercase is not directly supported in batch
echo Use PowerShell or external tools for case conversion

echo.
echo === String concatenation ===
set FIRST=Hello
set SECOND=World
set COMBINED=%FIRST% %SECOND%
echo Combined: %COMBINED%

pause
