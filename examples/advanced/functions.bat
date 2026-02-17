@echo off
REM Functions (subroutines) in batch files

echo Calling functions...
call :greet John
call :add 5 10
call :multiply 4 7

echo All functions completed!
pause
exit /b

REM Function definitions
:greet
echo Hello, %~1!
exit /b

:add
set /a result=%~1+%~2
echo %~1 + %~2 = %result%
exit /b

:multiply
set /a result=%~1*%~2
echo %~1 * %~2 = %result%
exit /b
