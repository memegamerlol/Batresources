@echo off
REM Loop examples in batch files

echo === Simple FOR loop ===
for %%i in (1 2 3 4 5) do echo Number: %%i

echo.
echo === Loop through files ===
for %%f in (*.bat) do echo Found: %%f

echo.
echo === Loop with range ===
for /L %%n in (1,1,10) do echo Count: %%n

echo.
echo === GOTO loop ===
set /a COUNTER=0
:loop
if %COUNTER% geq 5 goto end
echo Counter: %COUNTER%
set /a COUNTER+=1
goto loop

:end
echo Loop completed!
pause
