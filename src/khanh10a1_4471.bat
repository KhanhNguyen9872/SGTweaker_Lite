@echo off
echo.
color 17

:START
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo                    Vui long chon Android cua SmartGaGa Lite!
echo                   Please choose the Android of SmartGaGa Lite!
echo.
echo       1 = Android 4.4.2 (Beta Lite)
echo       2 = Android 7.1.2 (Beta Lite)
echo       E = Exit
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==1 GOTO ANDROID4
IF %AREYOUSURE%==2 GOTO ANDROID7
IF %AREYOUSURE%==E GOTO EXIT
IF %AREYOUSURE%==e GOTO EXIT
GOTO START

:ANDROID4
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\khanh10a1.vbs
exit

:ANDROID7
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\khanh11a1.vbs
exit

:EXIT
cls
echo CONSOLE_MODE: YES
exit

