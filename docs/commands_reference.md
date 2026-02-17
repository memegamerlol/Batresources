# Batch File Commands Reference

## File and Directory Commands

### DIR - List Directory Contents
```batch
dir                 REM List files in current directory
dir /b              REM Bare format (names only)
dir /s              REM Include subdirectories
dir *.txt           REM List only .txt files
```

### CD - Change Directory
```batch
cd C:\Windows       REM Change to specific directory
cd ..               REM Move up one directory
cd /d D:\Folder     REM Change drive and directory
```

### MD/MKDIR - Create Directory
```batch
mkdir newfolder
md "folder with spaces"
```

### RD/RMDIR - Remove Directory
```batch
rmdir emptyfolder
rd /s /q folder     REM Remove with contents, no prompt
```

### COPY - Copy Files
```batch
copy file.txt backup.txt
copy *.txt D:\Backup\
copy /y file.txt dest.txt    REM Overwrite without prompt
```

### XCOPY - Extended Copy
```batch
xcopy source dest /e /h /k   REM Copy with subdirs and attributes
xcopy *.* backup\ /s /y      REM Copy all with subdirs, no prompt
```

### MOVE - Move Files
```batch
move file.txt newlocation\
move *.txt D:\Archive\
```

### DEL/ERASE - Delete Files
```batch
del file.txt
del /q /f *.*       REM Delete all files, quiet mode, force
```

### REN/RENAME - Rename Files
```batch
ren oldname.txt newname.txt
ren *.txt *.bak
```

## Variable Commands

### SET - Set Variables
```batch
set VAR=value
set /p VAR=Enter value: 
set /a NUM=5+3      REM Arithmetic
```

### SETLOCAL/ENDLOCAL - Local Variables
```batch
setlocal
set VAR=local value
endlocal            REM VAR no longer exists
```

## Control Flow Commands

### IF - Conditional Execution
```batch
if %VAR%==value command
if exist file.txt command
if errorlevel 1 command
if /i "%VAR%"=="VALUE" command    REM Case insensitive
```

### FOR - Loop Through Items
```batch
for %%i in (1 2 3) do echo %%i
for /l %%i in (1,1,10) do echo %%i    REM Loop 1 to 10
for /f "tokens=*" %%a in (file.txt) do echo %%a
for /r %%f in (*.txt) do echo %%f     REM Recursive
```

### GOTO - Jump to Label
```batch
goto label
:label
echo Jumped here
```

### CALL - Call Subroutine
```batch
call :function
call other.bat
call :function param1 param2
```

### EXIT - Exit Script
```batch
exit                REM Exit script
exit /b             REM Exit subroutine
exit /b 1           REM Exit with error code
```

## System Commands

### ECHO - Display Text
```batch
echo Hello World
echo %VAR%
echo. 
echo off/on
```

### PAUSE - Wait for User
```batch
pause               REM Press any key to continue
```

### CLS - Clear Screen
```batch
cls
```

### TITLE - Set Window Title
```batch
title My Batch Script
```

### COLOR - Set Console Colors
```batch
color 0a            REM Black background, green text
```

### START - Start New Process
```batch
start notepad.exe
start "" "file.txt"
```

### TIMEOUT - Wait for Seconds
```batch
timeout /t 5        REM Wait 5 seconds
timeout /t 10 /nobreak
```

### SHUTDOWN - Shutdown/Restart
```batch
shutdown /s /t 0    REM Shutdown immediately
shutdown /r /t 0    REM Restart immediately
```

## Network Commands

### PING - Test Connection
```batch
ping google.com
ping -n 4 8.8.8.8
```

### IPCONFIG - Network Configuration
```batch
ipconfig
ipconfig /all
ipconfig /release
ipconfig /renew
```

### NETSTAT - Network Statistics
```batch
netstat -an
netstat -ano        REM Show process IDs
```

## Special Variables

| Variable | Description |
|----------|-------------|
| `%CD%` | Current directory |
| `%DATE%` | Current date |
| `%TIME%` | Current time |
| `%RANDOM%` | Random number |
| `%ERRORLEVEL%` | Last error level |
| `%COMPUTERNAME%` | Computer name |
| `%USERNAME%` | Current username |
| `%USERPROFILE%` | User profile path |
| `%WINDIR%` | Windows directory |
| `%TEMP%` | Temp directory |
| `%1-%9` | Command line parameters |

## Operators

### Comparison Operators
- `EQU` - Equal to
- `NEQ` - Not equal to
- `LSS` - Less than
- `LEQ` - Less than or equal to
- `GTR` - Greater than
- `GEQ` - Greater than or equal to

### Arithmetic Operators
- `+` - Addition
- `-` - Subtraction
- `*` - Multiplication
- `/` - Division
- `%` - Modulus
- `=` - Assignment

## Redirection and Pipes

```batch
command > file.txt          REM Redirect output to file (overwrite)
command >> file.txt         REM Append output to file
command 2> error.txt        REM Redirect errors
command > output.txt 2>&1   REM Redirect both output and errors
command | command2          REM Pipe output to another command
```
