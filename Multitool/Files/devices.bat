@echo off
echo Scanning for devices on your network...

:: Define the subnet (change to your network if necessary)
set subnet=192.168.1.

:: Loop through all IP addresses in the subnet
for /L %%i in (1,1,254) do (
    ping -n 1 -w 100 %subnet%%%i >nul
    if not errorlevel 1 (
        echo %subnet%%%i is online
        :: Get the device name using nbtstat
        for /f "tokens=1" %%a in ('nbtstat -A %subnet%%%i ^| findstr "UNIQUE"') do echo Device Name: %%a
    )
)

:: Show MAC addresses with ARP
echo Running ARP to get MAC addresses...
arp -a

echo.
echo Scanning for available Wi-Fi networks...
netsh wlan show networks

pause
