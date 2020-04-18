@echo off
Setlocal EnableDelayedExpansion

set "Music_PATH=F:\MusicLibrary"
set counter=0

for /f "tokens=*" %%a in ('forfiles /P "%Music_PATH%"') do (
    set Rand_PATH[!counter!]=%%~nxa
    set /a counter+=1
)

set /a Random_Music=%random% %% %counter%
set "Full_PATH=%Music_PATH%\!Rand_PATH[%Random_Music%]!"

echo Random Music & echo. & echo !Rand_PATH[%Random_Music%]!
rem start "" "%Full_PATH%"

pause >nul