:: batch script that search all folders in working directory, that has "build" folder, and deletes "build" folders.
:: add /q to rmdir command to suppress confirmation

@echo off
setlocal EnableDelayedExpansion
for /f "delims=" %%i in ('dir /b /ad') do (
    if exist "%%i\build" (
        if not "%%i\build" == "build" (
            echo %%i\build
            rmdir "%%i\build" /s 
        )
    )
)