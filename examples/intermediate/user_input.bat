@echo off
REM User input examples in batch files

echo === Simple input ===
set /p NAME=Enter your name: 
echo Hello, %NAME%!

echo.
echo === Input with validation ===
:getAge
set /p AGE=Enter your age: 
if not defined AGE goto getAge
if %AGE% lss 0 goto getAge
echo You are %AGE% years old.

echo.
echo === Choice menu ===
echo Select an option:
echo 1. Option A
echo 2. Option B
echo 3. Option C
choice /c 123 /m "Enter your choice"
if errorlevel 3 echo You selected Option C
if errorlevel 2 if not errorlevel 3 echo You selected Option B
if errorlevel 1 if not errorlevel 2 echo You selected Option A

echo.
echo === Yes/No confirmation ===
choice /c YN /m "Do you want to continue"
if errorlevel 2 goto no
if errorlevel 1 goto yes

:yes
echo You selected Yes!
goto end

:no
echo You selected No!
goto end

:end
pause
