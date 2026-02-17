@echo off
REM File operations in batch files

echo === Reading from a file ===
echo Line 1 > temp.txt
echo Line 2 >> temp.txt
echo Line 3 >> temp.txt
type temp.txt

echo.
echo === Reading file line by line ===
for /f "tokens=*" %%a in (temp.txt) do echo Read: %%a

echo.
echo === Copying files ===
copy temp.txt temp_backup.txt >nul
echo File copied!

echo.
echo === Moving files ===
move temp_backup.txt temp_moved.txt >nul
echo File moved!

echo.
echo === Deleting files ===
del temp.txt
del temp_moved.txt
echo Files deleted!

echo.
echo === Creating directories ===
mkdir testdir
echo Directory created!

echo.
echo === Removing directories ===
rmdir testdir
echo Directory removed!

pause
