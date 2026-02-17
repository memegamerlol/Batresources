# Getting Started with Batch Files

## What is a Batch File?

A batch file is a script file in Windows that contains a series of commands to be executed by the command-line interpreter (cmd.exe). Batch files have the `.bat` or `.cmd` extension.

## Creating Your First Batch File

1. Open Notepad or any text editor
2. Type your commands
3. Save the file with a `.bat` extension
4. Double-click to run

### Example: Hello World

```batch
@echo off
echo Hello, World!
pause
```

## Basic Syntax

### Comments
```batch
REM This is a comment
:: This is also a comment
```

### Echo Command
```batch
@echo off          REM Turns off command echoing
echo Hello World   REM Displays text
```

### Variables
```batch
set NAME=John
echo %NAME%        REM Displays: John
```

### User Input
```batch
set /p NAME=Enter your name: 
echo Hello, %NAME%!
```

## Common Commands

| Command | Description |
|---------|-------------|
| `echo` | Display messages |
| `set` | Create or modify variables |
| `if` | Conditional execution |
| `for` | Loop through items |
| `goto` | Jump to a label |
| `call` | Call another batch file or function |
| `exit` | Exit the script |
| `pause` | Wait for user input |

## Running Batch Files

### Method 1: Double-click
Simply double-click the `.bat` file in Windows Explorer

### Method 2: Command Prompt
```
C:\> mybatch.bat
```

### Method 3: With Parameters
```
C:\> mybatch.bat param1 param2
```

Access parameters in your script:
```batch
echo First parameter: %1
echo Second parameter: %2
```

## Best Practices

1. **Use @echo off**: Prevents commands from being displayed
2. **Add comments**: Make your code readable
3. **Use pause**: Allows you to see output before window closes
4. **Error handling**: Check for errors using errorlevel
5. **Use meaningful variable names**: Makes code easier to understand

## Next Steps

- Explore the examples in the `examples` folder
- Read the `commands_reference.md` for detailed command information
- Check out `best_practices.md` for advanced tips
