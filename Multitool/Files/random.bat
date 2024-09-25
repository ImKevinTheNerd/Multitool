@echo off
setlocal enabledelayedexpansion

:main
echo Choose how many numbers to generate (1-10):
set /p count=

rem Validate input
if %count% lss 1 (
    echo Invalid input. Please enter a number between 1 and 10.
    goto main
) else if %count% gtr 10 (
    echo Invalid input. Please enter a number between 1 and 10.
    goto main
)

set sum=0

echo Generating %count% random numbers...

for /L %%i in (1,1,%count%) do (
    set /a randomNum=!random! %% 2001 - 1000
    echo Number %%i: !randomNum!
    set /a sum=!sum! + !randomNum!
)

rem Calculate mean
set /a mean=sum/count

echo.
echo Mean value of the generated numbers: !mean!

pause
