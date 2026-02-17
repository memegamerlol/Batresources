@echo off
REM Conditional statements in batch files

echo === Simple IF statement ===
set VALUE=10
if %VALUE%==10 echo Value is 10

echo.
echo === IF-ELSE statement ===
set AGE=18
if %AGE% geq 18 (
    echo You are an adult
) else (
    echo You are a minor
)

echo.
echo === Check if file exists ===
if exist "hello_world.bat" (
    echo File exists!
) else (
    echo File does not exist!
)

echo.
echo === Check if directory exists ===
if exist "..\intermediate\" (
    echo Directory exists!
) else (
    echo Directory does not exist!
)

echo.
echo === String comparison ===
set USERNAME=admin
if /i "%USERNAME%"=="admin" (
    echo Welcome Administrator!
) else (
    echo Welcome User!
)

pause
