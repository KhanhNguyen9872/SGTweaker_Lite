@echo off
color 17
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\adb.exe shell
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo.
echo  Khanh: Device not found or disconnected! Please check your SmartGaGa Lite!
pause
exit
