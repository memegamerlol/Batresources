@echo off
REM Working with variables in batch files

REM Setting variables
set NAME=John
set AGE=25
set LOCATION=New York

REM Displaying variables
echo Name: %NAME%
echo Age: %AGE%
echo Location: %LOCATION%

REM String concatenation
set FULLINFO=%NAME% from %LOCATION%
echo Full Info: %FULLINFO%

REM Arithmetic operations
set /a SUM=10+5
set /a PRODUCT=10*5
echo Sum: %SUM%
echo Product: %PRODUCT%

pause
