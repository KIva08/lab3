@echo off
 
:input_directory
set /p directory=Enter the directory path:
 
if "%directory%"=="" (
    echo Directory path is not specified.
    goto input_directory
)
 
if not exist "%directory%" (
    echo The specified directory does not exist.
    goto input_directory
)
 
pushd "%directory%"
if errorlevel 1 (
    echo Unable to change to the specified directory.
    pause
    exit /b 1
)
 
echo Directory contents:
dir /b
 
echo.
echo File size:
dir /s /-c
 
popd
 
if %errorlevel% equ 0 (
    echo The program has completed successfully with exit code 0. 
) else (
    echo The program has completed with exit code 1.
)
 
pause