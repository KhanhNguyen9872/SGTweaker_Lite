@echo off
color 17
cls

:CHECKING
cls
echo CONSOLE_MODE: YES
IF EXIST "%ProgramFiles(x86)%\SmartGaGa\ProjectTitan\androidfs\system\readonly.bin" GOTO ORIGINAL01
IF EXIST "%ProgramFiles(x86)%\SmartGaGa\ProjectTitan\androidfs_7.1.2\system\readonly.bin" GOTO ORIGINAL01 
IF EXIST "%ProgramFiles(x86)%\SmartGaGa\ProjectTitan\androidfs\system\readonly.bin" GOTO ORIGINAL01
IF EXIST "%ProgramFiles(x86)%\SmartGaGa\ProjectTitan\androidfs_7.1.2\system\readonly.bin" GOTO ORIGINAL01
IF not EXIST "C:\SmartGaGa_Lite\ProjectTitan\androidfs\system\readonly.bin" GOTO BETA47
cd C:\
cd /SmartGaGa Lite
cd ProjectTitan\androidfs\system
IF not EXIST readonly.bin GOTO BETA7
cd C:\
cd /SmartGaGa Lite
cd ProjectTitan\androidfs_7.1.2\system
IF not EXIST readonly.bin GOTO MOD32
cls
echo CONSOLE_MODE: YES
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\khanh10a1_0.bat
exit

:ORIGINAL01
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\ORIGINAL01_khanh.vbs
GOTO EXIT

:MOD32
cls
echo CONSOLE_MODE: YES
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\khanh11a1_3244.bat
exit

:BETA47
cls
echo WINDOWS_CONSOLE:YES
cd C:\
cd /SmartGaGa Lite
cd ProjectTitan\androidfs\system
IF not EXIST readonly.bin GOTO BETA70
cd C:\
cd /SmartGaGa Lite
cd ProjectTitan\androidfs_7.1.2\system
IF not EXIST readonly.bin GOTO BETA71
cls
echo CONSOLE_MODE: YES
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\khanh10a1_4471.bat
exit

:BETA70
cls
echo WINDOWS_CONSOLE:YES
cd C:\
cd /SmartGaGa Lite
cd ProjectTitan\androidfs_7.1.2\system
IF not EXIST readonly.bin GOTO BETA72
cls
echo CONSOLE_MODE: YES
cd %windir%\khanh10a1\framework
khanh11a1.vbs
exit

:BETA71
cls
echo CONSOLE_MODE: YES
cd %windir%\khanh10a1\framework
khanh10a1.vbs
exit

:BETA72
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo.
echo  ERROR code: 001
echo.
echo    Vui long cai dat SmartGaGa Lite truoc khi su dung SGTweaker Lite
echo.
echo    Nhan phim bat ki de thoat SGTweaker Lite
echo.
pause
GOTO EXIT

:BETA7
cls
echo CONSOLE_MODE: YES
cd C:\
cd /SmartGaGa Lite
cd ProjectTitan\androidfs_7.1.2\system
IF not EXIST readonly.bin GOTO BETA73
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\khanh11a1_3271.bat
exit

:BETA73
cls
echo CONSOLE_MODE: YES
cd %windir%\khanh10a1\framework
khanh12a1.vbs
exit

:EXIT
cls
echo CONSOLE_MODE: YES
rmdir /q /s "%windir%\khanh10a1\framework"
rmdir /q /s "%windir%\khanh10a1\lib"
del /f "%windir%\khanh10a1\SGTweaker_v4.0.exe"
del /f "%windir%\khanh10a1\khanh11a1.bat"
del /f "%windir%\khanh10a1\khanh10a1.vbs"
exit