@echo off
title MultiTool - by Kevin
chcp 65001 >nul
cd files
color 5
:start
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo [38;2;255;255;0m        ╔═(1) Counter Strike 2[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠══(2) IpInfo[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═══(3) Roblox[0m  
echo [38;2;255;255;0m        ║[0m 
echo [38;2;255;255;0m        ╠════(4) Curseforge[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═════(5) Youtube[0m 
echo [38;2;255;255;0m        ║[0m 
echo [38;2;255;255;0m        ╠══════(6) Shutdown[0m 
echo [38;2;255;255;0m        ║[0m 
echo [38;2;255;255;0m        ╠═══════(7) Connected Devices 
echo [38;2;255;255;0m        ║[0m 
echo [38;2;255;255;0m        ╚════════(8) Number Generator
set /p input=.%BS% [38;2;255;255;0m                        ╚══════^>[0m  
if /I %input% EQU 1 start cs2
if /I %input% EQU 2 start ip
if /I %input% EQU 3 start roblox
if /I %input% EQU 4 start curseforge
if /I %input% EQU 5 start youtube
if /I %input% EQU 6 start shutdown
if /I %input% EQU 7 start devices
if /I %input% EQU 8 start random

if /I %input% EQU 1 start thanks
if /I %input% EQU 2 start thanks
if /I %input% EQU 3 start thanks
if /I %input% EQU 4 start thanks
if /I %input% EQU 5 start thanks
if /I %input% EQU 6 start thanks
if /I %input% EQU 7 start thanks
if /I %input% EQU 8 start thanks
cls
goto start

:banner
echo.
echo.
echo                     [38;2;255;0;0m███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗[0m     
echo                     [38;2;255;51;0m████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     [0m
echo                     [38;2;255;102;0m██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║    [0m 
echo                     [38;2;255;153;0m██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     [0m
echo                     [38;2;255;204;0m██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗[0m
echo                     [38;2;255;255;0m╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝[0m
echo.