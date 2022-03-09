@echo off
echo.
color 17

:LOADDING
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                   [Boot Mode]
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo.
echo verify_file...
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                   [Boot Mode]
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo.
echo verify_file_ok
echo check_smartgaga_lite...
timeout 01
GOTO 02

:02
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                   [Boot Mode]
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo.
echo verify_file_ok
echo check_smartgaga_lite_ok
echo.
echo.
echo      1 = Start SGTweaker Lite
echo      2 = Auto Install SmartGaGa Lite by khanh11a1
echo      3 = Exit
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==1 GOTO START
IF %AREYOUSURE%==2 GOTO AUTOINSTALL
IF %AREYOUSURE%==3 GOTO EXIT
GOTO 02

:AUTOINSTALL
cls
echo CONSOLE_MODE: YES
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\khanh_download.vbs
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

:START
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                   [Starting]
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo.
echo verify_file_ok
echo check_smartgaga_lite_ok
echo check_admin_permission_ok
echo.
echo                         Loading module. Please wait.....
echo.
timeout 02
cls
%windir%\khanh10a1\framework\khanh11a1_check.vbs
exit