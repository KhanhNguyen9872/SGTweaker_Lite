@echo off
echo.
color 17

:KHANH10A1
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo    Youtube: https://www.youtube.com/channel/UC1Npa_Mu85Qo1Rut5K1Rh7g
echo    Facebook: https://fb.me/khanh10a1
echo.
echo                   - Phien ban SGTweaker Lite hien tai: v4.0 -
echo                - Phien ban SmartGaGa Lite moi nhat: v1.1.646.1 -
echo.
echo     0 = Thay doi Giao dien SmartGaGa Lite (Themes)
echo     1 = Cai Game vao SmartGaGa Lite (Lien Quan, Free Fire,...)
echo     2 = ADB Shell (Android Debug Bridge Shell)
echo     3 = Thay doi ngon ngu SmartGaGa Beta Lite (Change Language)
echo     4 = Thay lib DirectX (OpenGL 2.0, fix loi do hoa 1 so game)
echo     5 = Reset SmartGaGa Beta Lite Android 7.1.2
echo     6 = Xoa SmartGaGa Beta Lite (Uninstall SmartGaGa Beta Lite)
echo     7 = Them Termux
echo     8 = Thay doi Do phan giai (Change Resolution)
echo     9 = Mau sac HDR cho SmartGaGa Beta Lite (HDR Color)
echo     A = Youtube Khanh Nguyen (khanh10a1)
echo     B = Bao cao loi (Report Error)
echo     E = Thoat Tools (Exit)
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==0 GOTO THEMES
IF %AREYOUSURE%==1 GOTO GAMES
IF %AREYOUSURE%==2 GOTO ADB
IF %AREYOUSURE%==3 GOTO LANGUAGE
IF %AREYOUSURE%==4 GOTO LIB
IF %AREYOUSURE%==5 GOTO RESET
IF %AREYOUSURE%==6 GOTO DELETE
IF %AREYOUSURE%==7 GOTO TERMUX
IF %AREYOUSURE%==8 GOTO RESOLUTION
IF %AREYOUSURE%==9 GOTO COLOR
IF %AREYOUSURE%==A GOTO YOUTUBE
IF %AREYOUSURE%==a GOTO YOUTUBE
IF %AREYOUSURE%==B GOTO CONTACT
IF %AREYOUSURE%==b GOTO CONTACT
IF %AREYOUSURE%==E GOTO EXIT
IF %AREYOUSURE%==e GOTO EXIT
GOTO KHANH10A1

:COLOR
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo.
echo.
echo     1 = HDR Color cho DirectX
echo     2 = HDR Color cho OpenGL
echo     3 = Tat HDR Color (Disable HDR Color)
echo     4 = Back
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==1 GOTO HDRDX
IF %AREYOUSURE%==2 GOTO HDROGL
IF %AREYOUSURE%==3 GOTO DISHDR
IF %AREYOUSURE%==4 GOTO KHANH10A1
GOTO COLOR

:HDRDX
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR DirectX]
echo.
echo   Ban co muon bat HDR Color cho DirectX?
echo   Are you sure to enable HDR Color for DirectX?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO HDRDXYES
IF %AREYOUSURE%==y GOTO HDRDXYES
IF %AREYOUSURE%==N GOTO COLOR
IF %AREYOUSURE%==n GOTO COLOR
GOTO HDRDX

:HDROGL
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR OpenGL]
echo.
echo   Ban co muon bat HDR Color cho OpenGL?
echo   Are you sure to enable HDR Color for OpenGL?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO HDROGLYES
IF %AREYOUSURE%==y GOTO HDROGLYES
IF %AREYOUSURE%==N GOTO COLOR
IF %AREYOUSURE%==n GOTO COLOR
GOTO HDROGL

:DISHDR
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [Disable HDR]
echo.
echo     Ban co muon tat HDR Color
echo     Are you sure to disable HDR Color?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO DISHDRYES
IF %AREYOUSURE%==y GOTO DISHDRYES
IF %AREYOUSURE%==N GOTO COLOR
IF %AREYOUSURE%==n GOTO COLOR
GOTO DISHDR

:DISHDRYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [Disable HDR]
echo.
echo     [                    ] 0%
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh11a1_HDR.dll" GOTO ERROR014
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 02
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [Disable HDR]
echo.
echo     [-                   ] 5%
echo.
echo    Process: 
rmdir /q /s "%windir%\khanh10a1\framework\dx"
rmdir /q /s "%windir%\khanh10a1\framework\ogl"
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [Disable HDR]
echo.
echo     [------------        ] 60%
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd Engine
rmdir /q /s HDR_khanh11a1
del /f opengl32.dll
del /f opengl32.log
del /f dxgi.log
del /f dxgi.dll
del /f ReShade.ini
del /f ReShadePreset.ini
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [Disable HDR]
echo.
echo     [--------------------] 100%
echo.
echo    Process: Disable HDR completed
echo.
rmdir /q /s "%windir%\khanh10a1\framework\dx"
rmdir /q /s "%windir%\khanh10a1\framework\ogl"
pause
GOTO EXIT

:HDRDXYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR DirectX]
echo.
echo     [                    ] 0%
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh11a1_HDR.dll" GOTO ERROR014
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 02
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR DirectX]
echo.
echo     [-                   ] 5%
echo.
echo    Process: 
rmdir /q /s "%windir%\khanh10a1\framework\dx"
rmdir /q /s "%windir%\khanh10a1\framework\ogl"
timeout 01
execute x %windir%\khanh10a1\lib\khanh11a1_HDR.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR DirectX]
echo.
echo     [--                  ] 10%
echo.
echo    Process: khanh11a1_HDR.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR DirectX]
echo.
echo     [------              ] 30%
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd Engine
rmdir /q /s HDR_khanh11a1
del /f dxgi.dll
del /f dxgi.log
del /f ReShade.ini
del /f ReShadePreset.ini
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR DirectX]
echo.
echo     [--------------      ] 50%
echo.
echo    Process: 
Xcopy /E /C /I /Y "%windir%\khanh10a1\framework\dx\HDR_khanh11a1" HDR_khanh11a1
copy "%windir%\khanh10a1\framework\dx\dxgi.dll" dxgi.dll
copy "%windir%\khanh10a1\framework\dx\ReShade.ini" ReShade.ini
copy "%windir%\khanh10a1\framework\dx\ReShadePreset.ini" ReShadePreset.ini
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR DirectX]
echo.
echo     [--------------------] 100%
echo.
echo    Process: khanh11a1_HDR.dll execute successfully.
echo.
rmdir /q /s "%windir%\khanh10a1\framework\dx"
rmdir /q /s "%windir%\khanh10a1\framework\ogl"
pause
GOTO EXIT

:HDROGLYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR OpenGL]
echo.
echo     [                    ] 0%
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh11a1_HDR.dll" GOTO ERROR014
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 02
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR OpenGL]
echo.
echo     [-                   ] 5%
echo.
echo    Process: 
rmdir /q /s "%windir%\khanh10a1\framework\dx"
rmdir /q /s "%windir%\khanh10a1\framework\ogl"
timeout 01
execute x %windir%\khanh10a1\lib\khanh11a1_HDR.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR OpenGL]
echo.
echo     [--                  ] 10%
echo.
echo    Process: khanh11a1_HDR.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR OpenGL]
echo.
echo     [------              ] 30%
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd Engine
rmdir /q /s HDR_khanh11a1
del /f opengl32.dll
del /f opengl32.log
del /f ReShade.ini
del /f ReShadePreset.ini
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR OpenGL]
echo.
echo     [--------------      ] 50%
echo.
echo    Process: 
Xcopy /E /C /I /Y "%windir%\khanh10a1\framework\ogl\HDR_khanh11a1" HDR_khanh11a1
copy "%windir%\khanh10a1\framework\ogl\opengl32.dll" opengl32.dll
copy "%windir%\khanh10a1\framework\ogl\ReShade.ini" ReShade.ini
copy "%windir%\khanh10a1\framework\ogl\ReShadePreset.ini" ReShadePreset.ini
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                         Mau sac HDR cho SmartGaGa Lite
echo                          HDR Color for SmartGaGa Lite
echo                                  [HDR OpenGL]
echo.
echo     [--------------------] 100%
echo.
echo    Process: khanh11a1_HDR.dll execute successfully.
echo.
rmdir /q /s "%windir%\khanh10a1\framework\dx"
rmdir /q /s "%windir%\khanh10a1\framework\ogl"
pause
GOTO EXIT

:RESOLUTION
cls
echo CONSOLE_MODE: YES
cd %windir%\khanh10a1\framework
2.vbs
exit

:LANGUAGE
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                        Thay doi ngon ngu SmartGaGa Lite
echo                         Change Language SmartGaGa Lite
echo.
echo     1 = Tieng Viet (Viet hoa boi Khanh)
echo     2 = English
echo     3 = Quay tro lai (Back)
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==1 GOTO TIENGVIET
IF %AREYOUSURE%==2 GOTO ENGLISH
IF %AREYOUSURE%==3 GOTO KHANH10A1
GOTO LANGUAGE

:ENGLISH
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                        Thay doi ngon ngu SmartGaGa Lite
echo                         Change Language SmartGaGa Lite
echo.
echo                  Ban co muon thay doi ngon ngu SmartGaGa Lite?
echo                 Are you sure to change language SmartGaGa Lite?
echo                                [Choose: English]
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO ENGLISHYES
IF %AREYOUSURE%==y GOTO ENGLISHYES
IF %AREYOUSURE%==N GOTO LANGUAGE
IF %AREYOUSURE%==n GOTO LANGUAGE
GOTO ENGLISH

:ENGLISHYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                                [Choose: English]
echo.
echo     [                    ] 0%
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh11a1_LG.dll" GOTO ERROR013
rmdir /q /s "%windir%\khanh10a1\framework\khanh11"
rmdir /q /s "%windir%\khanh10a1\framework\khanh10"
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                                [Choose: English]
echo.
echo     [-                   ] 5%
echo.
echo    Process: 
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 01
execute x %windir%\khanh10a1\lib\khanh11a1_LG.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                                [Choose: English]
echo.
echo     [--                  ] 10%
echo.
echo    Process: khanh11a1_LG.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                                [Choose: English]
echo.
echo     [------              ] 30%
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd Engine
cd lang
del /f en_US.ini
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                                [Choose: English]
echo.
echo     [--------------      ] 50%
echo.
echo    Process: 
copy "%windir%\khanh10a1\framework\khanh10\en_US.ini" en_US.ini
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                                [Choose: English]
echo.
echo     [--------------------] 100%
echo.
echo    Process: khanh11a1_LG.dll execute successfully.
echo.
rmdir /q /s "%windir%\khanh10a1\framework\khanh11"
rmdir /q /s "%windir%\khanh10a1\framework\khanh10"
pause
GOTO EXIT

:TIENGVIET
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                        Thay doi ngon ngu SmartGaGa Lite
echo                         Change Language SmartGaGa Lite
echo.
echo                  Ban co muon thay doi ngon ngu SmartGaGa Lite?
echo                 Are you sure to change language SmartGaGa Lite?
echo                             [Choose: Tieng Viet]
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO TIENGVIETYES
IF %AREYOUSURE%==y GOTO TIENGVIETYES
IF %AREYOUSURE%==N GOTO LANGUAGE
IF %AREYOUSURE%==n GOTO LANGUAGE
GOTO TIENGVIET

:TIENGVIETYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                              [Choose: Tieng Viet]
echo.
echo     [                    ] 0%
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh11a1_LG.dll" GOTO ERROR013
rmdir /q /s "%windir%\khanh10a1\framework\khanh11"
rmdir /q /s "%windir%\khanh10a1\framework\khanh10"
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                              [Choose: Tieng Viet]
echo.
echo     [-                   ] 5%
echo.
echo    Process: 
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 01
execute x %windir%\khanh10a1\lib\khanh11a1_LG.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                              [Choose: Tieng Viet]
echo.
echo     [--                  ] 10%
echo.
echo    Process: khanh11a1_LG.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                              [Choose: Tieng Viet]
echo.
echo     [------              ] 30%
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd Engine
cd lang
del /f en_US.ini
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                              [Choose: Tieng Viet]
echo.
echo     [--------------      ] 50%
echo.
echo    Process: 
copy "%windir%\khanh10a1\framework\khanh11\en_US.ini" en_US.ini
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                              [Choose: Tieng Viet]
echo.
echo     [--------------------] 100%
echo.
echo    Process: khanh11a1_LG.dll execute successfully.
echo.
rmdir /q /s "%windir%\khanh10a1\framework\khanh11"
rmdir /q /s "%windir%\khanh10a1\framework\khanh10"
pause
GOTO EXIT

:ERROR013
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\ERROR013_khanh.vbs
GOTO KHANH10A1

:THEMES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 4.4.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo        Thay doi giao dien SmartGaGa Lite
echo.
echo     0 = Giao dien SmartGaGa Lite
echo     1 = Giao dien SmartGaGa Garena Free Fire
echo     2 = Giao dien SmartGaGa Lite 801
echo     3 = Giao dien SmartGaGa Goc
echo     B = Back
echo     C = Cancel
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==0 GOTO SMGGLITE
IF %AREYOUSURE%==1 GOTO SMGGFF 
IF %AREYOUSURE%==2 GOTO SMGG801
IF %AREYOUSURE%==3 GOTO SMGGGOC 
IF %AREYOUSURE%==B GOTO KHANH10A1
IF %AREYOUSURE%==b GOTO KHANH10A1
IF %AREYOUSURE%==C GOTO EXIT
IF %AREYOUSURE%==c GOTO EXIT
GOTO THEMES

:ERROR002
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\ERROR002_khanh.vbs
GOTO KHANH10A1

:ERROR060
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\ERROR060_khanh.vbs
GOTO KHANH10A1

:ERROR061
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\ERROR061_khanh.vbs
GOTO KHANH10A1

:ERROR004
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\ERROR004_khanh.vbs
GOTO KHANH10A1

:ERROR003
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\ERROR003_khanh.vbs
GOTO KHANH10A1

:SMGGLITE
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo              Ban co muon thao doi Giao Dien thanh SmartGaGa Lite?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO SMGGLITEYES
IF %AREYOUSURE%==y GOTO SMGGLITEYES
IF %AREYOUSURE%==N GOTO THEMES
IF %AREYOUSURE%==n GOTO THEMES
GOTO SMGGLITE

:SMGGLITEYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                                [SmartGaGa Lite]
echo.
echo     [                    ] 0%
echo.
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh11a1_TM.dll" GOTO ERROR002
del /f "%windir%\khanh10a1\framework\Lite\titan.pak"
del /f "%windir%\khanh10a1\framework\Original\titan.pak"
del /f "%windir%\khanh10a1\framework\801\titan.pak"
del /f "%windir%\khanh10a1\framework\FF\titan.pak"
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                                [SmartGaGa Lite]
echo.
echo     [-                   ] 5%
echo.
echo.
echo    Process: 
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 01
execute x %windir%\khanh10a1\lib\khanh11a1_TM.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                                [SmartGaGa Lite]
echo.
echo     [--                  ] 10%
echo.
echo.
echo    Process: khanh11a1_TM.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                                [SmartGaGa Lite]
echo.
echo     [------              ] 30%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd Engine
del /f titan.pak
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                                [SmartGaGa Lite]
echo.
echo     [--------------      ] 50%
echo.
echo.
echo    Process: 
copy "%windir%\khanh10a1\framework\Lite\titan.pak" titan.pak
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                                [SmartGaGa Lite]
echo.
echo     [--------------------] 100%
echo.
echo.
echo    Process: khanh11a1_TM.dll execute successfully.
echo.
del /f "%windir%\khanh10a1\framework\Lite\titan.pak"
del /f "%windir%\khanh10a1\framework\Original\titan.pak"
del /f "%windir%\khanh10a1\framework\801\titan.pak"
del /f "%windir%\khanh10a1\framework\FF\titan.pak"
pause
GOTO EXIT

:SMGGFF
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo   Ban co muon thao doi Giao Dien thanh SmartGaGa Lite Garena Free Fire?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO SMGGFFYES
IF %AREYOUSURE%==y GOTO SMGGFFYES
IF %AREYOUSURE%==N GOTO THEMES
IF %AREYOUSURE%==n GOTO THEMES
GOTO SMGGFF

:SMGGFFYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                       [SmartGaGa Lite Garena Free Fire]
echo.
echo     [                    ] 0%
echo.
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh11a1_TM.dll" GOTO ERROR002
del /f "%windir%\khanh10a1\framework\Lite\titan.pak"
del /f "%windir%\khanh10a1\framework\Original\titan.pak"
del /f "%windir%\khanh10a1\framework\801\titan.pak"
del /f "%windir%\khanh10a1\framework\FF\titan.pak"
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                       [SmartGaGa Lite Garena Free Fire]
echo.
echo     [-                   ] 5%
echo.
echo.
echo    Process: 
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 01
execute x %windir%\khanh10a1\lib\khanh11a1_TM.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                       [SmartGaGa Lite Garena Free Fire]
echo.
echo     [--                  ] 10%
echo.
echo.
echo    Process: khanh11a1_TM.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                                [SmartGaGa Lite]
echo.
echo     [------              ] 30%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd Engine
del /f titan.pak
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                       [SmartGaGa Lite Garena Free Fire]
echo.
echo     [--------------      ] 50%
echo.
echo.
echo    Process: 
copy "%windir%\khanh10a1\framework\FF\titan.pak" titan.pak
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                       [SmartGaGa Lite Garena Free Fire]
echo.
echo     [--------------------] 100%
echo.
echo.
echo    Process: khanh11a1_TM.dll execute successfully.
echo.
del /f "%windir%\khanh10a1\framework\Lite\titan.pak"
del /f "%windir%\khanh10a1\framework\Original\titan.pak"
del /f "%windir%\khanh10a1\framework\801\titan.pak"
del /f "%windir%\khanh10a1\framework\FF\titan.pak"
pause
GOTO EXIT

:SMGG801
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo           Ban co muon thao doi Giao Dien thanh SmartGaGa Lite 801?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO SMGG801YES
IF %AREYOUSURE%==y GOTO SMGG801YES
IF %AREYOUSURE%==N GOTO THEMES
IF %AREYOUSURE%==n GOTO THEMES
GOTO SMGG801

:SMGG801YES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                              [SmartGaGa Lite 801]
echo.
echo     [                    ] 0%
echo.
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh11a1_TM.dll" GOTO ERROR002
del /f "%windir%\khanh10a1\framework\Lite\titan.pak"
del /f "%windir%\khanh10a1\framework\Original\titan.pak"
del /f "%windir%\khanh10a1\framework\801\titan.pak"
del /f "%windir%\khanh10a1\framework\FF\titan.pak"
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                              [SmartGaGa Lite 801]
echo.
echo     [-                   ] 5%
echo.
echo.
echo    Process: 
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 01
execute x %windir%\khanh10a1\lib\khanh11a1_TM.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                              [SmartGaGa Lite 801]
echo.
echo     [--                  ] 10%
echo.
echo.
echo    Process: khanh11a1_TM.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                              [SmartGaGa Lite 801]
echo.
echo     [------              ] 30%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd Engine
del /f titan.pak
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                              [SmartGaGa Lite 801]
echo.
echo     [--------------      ] 50%
echo.
echo.
echo    Process: 
copy "%windir%\khanh10a1\framework\801\titan.pak" titan.pak
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                              [SmartGaGa Lite 801]
echo.
echo     [--------------------] 100%
echo.
echo.
echo    Process: khanh11a1_TM.dll execute successfully.
echo.
del /f "%windir%\khanh10a1\framework\Lite\titan.pak"
del /f "%windir%\khanh10a1\framework\Original\titan.pak"
del /f "%windir%\khanh10a1\framework\801\titan.pak"
del /f "%windir%\khanh10a1\framework\FF\titan.pak"
pause
GOTO EXIT

:SMGGGOC
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo           Ban co muon thao doi Giao Dien thanh SmartGaGa Lite 801?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO SMGGGOCYES
IF %AREYOUSURE%==y GOTO SMGGGOCYES
IF %AREYOUSURE%==N GOTO THEMES
IF %AREYOUSURE%==n GOTO THEMES
GOTO SMGGGOC

:SMGGGOCYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                                 [SmartGaGa Goc]
echo.
echo     [                    ] 0%
echo.
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh11a1_TM.dll" GOTO ERROR002
del /f "%windir%\khanh10a1\framework\Lite\titan.pak"
del /f "%windir%\khanh10a1\framework\Original\titan.pak"
del /f "%windir%\khanh10a1\framework\801\titan.pak"
del /f "%windir%\khanh10a1\framework\FF\titan.pak"
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                                 [SmartGaGa Goc]
echo.
echo     [-                   ] 5%
echo.
echo.
echo    Process: 
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 01
execute x %windir%\khanh10a1\lib\khanh11a1_TM.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                                 [SmartGaGa Goc]
echo.
echo     [--                  ] 10%
echo.
echo.
echo    Process: khanh11a1_TM.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                                 [SmartGaGa Goc]
echo.
echo     [------              ] 30%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd Engine
del /f titan.pak
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                                 [SmartGaGa Goc]
echo.
echo     [--------------      ] 50%
echo.
echo.
echo    Process: 
copy "%windir%\khanh10a1\framework\Original\titan.pak" titan.pak
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                -Dang thay Giao dien SmartGaGa Lite by khanh10a1-
echo                                 [SmartGaGa Goc]
echo.
echo     [--------------------] 100%
echo.
echo.
echo    Process: khanh11a1_TM.dll execute successfully.
echo.
del /f "%windir%\khanh10a1\framework\Lite\titan.pak"
del /f "%windir%\khanh10a1\framework\Original\titan.pak"
del /f "%windir%\khanh10a1\framework\801\titan.pak"
del /f "%windir%\khanh10a1\framework\FF\titan.pak"
pause
GOTO EXIT

:TERMUX
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 4.4.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo              Ban co muon them Termux vao SmartGaGa Lite?
echo.
echo       * Note: Ban co the khoi phuc lai bang tinh nang Reset "System Only"
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO TERMUXYES
IF %AREYOUSURE%==y GOTO TERMUXYES
IF %AREYOUSURE%==N GOTO KHANH10A1
IF %AREYOUSURE%==n GOTO KHANH10A1
GOTO TERMUX

:TERMUXYES
cls
echo CONSOLE_MODE: YES
IF not EXIST "%windir%\khanh10a1\lib\khanh10a1_16.dll" GOTO ERROR060
rmdir /q /s "%windir%\khanh10a1\framework\system"
cls
echo CONSOLE_MODE: YES
echo.
echo    -Dang them Termux vao SmartGaGa Lite by khanh10a1-
echo.
echo     [                    ] 0%
echo.
echo.
echo    Process: 
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 01
cls
echo CONSOLE_MODE: YES
execute x %windir%\khanh10a1\lib\khanh10a1_16.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo.
echo    -Dang them Termux vao SmartGaGa Lite by khanh10a1-
echo.
echo     [------              ] 30%
echo.
echo.
echo    Process: khanh10a1_16.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo    -Dang them Termux vao SmartGaGa Lite by khanh10a1-
echo.
echo     [----------          ] 50%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo    -Dang them Termux vao SmartGaGa Lite by khanh10a1-
echo.
echo     [------------        ] 60%
echo.
echo.
echo    Process:
cd ProjectTitan
cd androidfs_7.1.2
cd system
rmdir /q /s 00000000
rmdir /q /s 00000001
rmdir /q /s 00000002
rmdir /q /s 00000003
rmdir /q /s 00000004
rmdir /q /s 00000005
rmdir /q /s 00000006
rmdir /q /s 00000007
rmdir /q /s 00000008
rmdir /q /s 00000009
del /f traces.txt
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo    -Dang them Termux vao SmartGaGa Lite by khanh10a1-
echo.
echo     [--------------      ] 70%
echo.
echo.
echo    Process: 
Xcopy /E /C /I /Y "%windir%\khanh10a1\framework\system\00000000" 00000000
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo    -Dang them Termux vao SmartGaGa Lite by khanh10a1-
echo.
echo     [----------------    ] 80%
echo.
echo.
echo    Process: 
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo    -Dang them Termux vao SmartGaGa Lite by khanh10a1-
echo.
echo     [--------------------] 100%
echo.
echo.
echo    Process: khanh10a1_16.dll execute successfully.
echo.
pause
GOTO EXIT



:GAMES
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\1.vbs
exit

:GAPPSNOT
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo               GApps cho Android 7.1 dang trong qua trinh thu nghiem!
echo.
pause
GOTO KHANH10A1

:ADB
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\khanh10a1_A.vbs
exit

:LIB
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo *Note: Thay lib cho GPU OpenGL 2.0 or 2.1 se giup 1 so game khong bi loi do hoa
echo                             vd: Lien Quan Mobile,...
echo           (Danh cho cac GPU cu nhu Intel G41, Mobile Intel 4 Series,...)
echo             WARNING: Cac Lib DirectX cho the anh huong den FPS cua game!
echo.
echo     1 = DirectX (Phien ban Beta)
echo     2 = DirectX (Phien ban Goc)
echo     B = Back
echo     C = Cancel
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==1 GOTO LIBBETA
IF %AREYOUSURE%==2 GOTO LIBGOC 
IF %AREYOUSURE%==B GOTO KHANH10A1
IF %AREYOUSURE%==b GOTO KHANH10A1
IF %AREYOUSURE%==C GOTO EXIT
IF %AREYOUSURE%==c GOTO EXIT
GOTO LIB

:LIBGOC
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo                Ban co muon thay Lib DirectX Goc cho SmartGaGa Lite?
echo.
echo     Y = Yes
echo     N = No
echo     C = Cancel
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==y GOTO LIBGOCYES
IF %AREYOUSURE%==Y GOTO LIBGOCYES 
IF %AREYOUSURE%==N GOTO LIB
IF %AREYOUSURE%==n GOTO LIB
IF %AREYOUSURE%==C GOTO EXIT
IF %AREYOUSURE%==c GOTO EXIT
GOTO LIBGOC

:LIBGOCYES
cls
echo CONSOLE_MODE: YES
echo.
echo                    -Dang thay lib SmartGaGa Lite by khanh10a1-
echo                                [Lib DirectX: Goc]
echo     [                    ] 0%
echo.
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh11a1_0.dll" GOTO ERROR003
rmdir /q /s "%windir%\khanh10a1\framework\renderer_dx"
rmdir /q /s "%windir%\khanh10a1\framework\renderer_gl"
rmdir /q /s "%windir%\khanh10a1\framework\renderer_xp"
del /f "%windir%\khanh10a1\framework\titan.pak"
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo                    -Dang thay lib SmartGaGa Lite by khanh10a1-
echo                                [Lib DirectX: Goc]
echo.
echo     [-                   ] 5%
echo.
echo.
echo    Process: 
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 01
execute x %windir%\khanh10a1\lib\khanh11a1_0.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                    -Dang thay lib SmartGaGa Lite by khanh10a1-
echo                                [Lib DirectX: Goc]
echo.
echo     [--                  ] 10%
echo.
echo.
echo    Process: khanh11a1_0.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo                    -Dang thay lib SmartGaGa Lite by khanh10a1-
echo                                [Lib DirectX: Goc]
echo.
echo     [------              ] 30%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd Engine
rmdir /q /s renderer_dx
rmdir /q /s renderer_gl
rmdir /q /s renderer_xp
del /f titan.pak
timeout 01
cls
echo CONSOLE_MODE: YES
echo                    -Dang thay lib SmartGaGa Lite by khanh10a1-
echo                                [Lib DirectX: Goc]
echo.
echo     [--------------      ] 50%
echo.
echo.
echo    Process: 
Xcopy /E /C /I /Y "%windir%\khanh10a1\framework\renderer_dx" renderer_dx
Xcopy /E /C /I /Y "%windir%\khanh10a1\framework\renderer_gl" renderer_gl
Xcopy /E /C /I /Y "%windir%\khanh10a1\framework\renderer_xp" renderer_xp
copy "%windir%\khanh10a1\framework\titan.pak" titan.pak
timeout 01
cls
echo CONSOLE_MODE: YES
echo                    -Dang thay lib SmartGaGa Lite by khanh10a1-
echo                                [Lib DirectX: Goc]
echo.
echo     [--------------------] 100%
echo.
echo.
echo    Process: khanh11a1_0.dll execute successfully.
echo.
rmdir /q /s "%windir%\khanh10a1\framework\renderer_dx"
rmdir /q /s "%windir%\khanh10a1\framework\renderer_gl"
rmdir /q /s "%windir%\khanh10a1\framework\renderer_xp"
del /f "%windir%\khanh10a1\framework\titan.pak"
pause
GOTO EXIT

:LIBBETA
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo                Ban co muon thay Lib DirectX Beta cho SmartGaGa Lite?
echo.
echo     Y = Yes
echo     N = No
echo     C = Cancel
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==y GOTO LIBBETAYES
IF %AREYOUSURE%==Y GOTO LIBBETAYES
IF %AREYOUSURE%==N GOTO LIB
IF %AREYOUSURE%==n GOTO LIB
IF %AREYOUSURE%==C GOTO EXIT
IF %AREYOUSURE%==c GOTO EXIT
GOTO LIBBETA

:LIBBETAYES
cls
echo CONSOLE_MODE: YES
echo.
echo                    -Dang thay lib SmartGaGa Lite by khanh10a1-
echo                               [Lib DirectX: BETA]
echo     [                    ] 0%
echo.
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh11a1.dll" GOTO ERROR004
rmdir /q /s "%windir%\khanh10a1\framework\renderer_dx"
rmdir /q /s "%windir%\khanh10a1\framework\renderer_gl"
rmdir /q /s "%windir%\khanh10a1\framework\renderer_xp"
del /f "%windir%\khanh10a1\framework\titan.pak"
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo                    -Dang thay lib SmartGaGa Lite by khanh10a1-
echo                               [Lib DirectX: BETA]
echo.
echo     [-                   ] 5%
echo.
echo.
echo    Process: 
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 01
execute x %windir%\khanh10a1\lib\khanh11a1.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                    -Dang thay lib SmartGaGa Lite by khanh10a1-
echo                               [Lib DirectX: BETA]
echo.
echo     [--                  ] 10%
echo.
echo.
echo    Process: khanh11a1.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo                    -Dang thay lib SmartGaGa Lite by khanh10a1-
echo                               [Lib DirectX: BETA]
echo.
echo     [------              ] 30%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd Engine
rmdir /q /s renderer_dx
rmdir /q /s renderer_gl
rmdir /q /s renderer_xp
del /f titan.pak
timeout 01
cls
echo CONSOLE_MODE: YES
echo                    -Dang thay lib SmartGaGa Lite by khanh10a1-
echo                               [Lib DirectX: BETA]
echo.
echo     [--------------      ] 50%
echo.
echo.
echo    Process: 
Xcopy /E /C /I /Y "%windir%\khanh10a1\framework\renderer_dx" renderer_dx
Xcopy /E /C /I /Y "%windir%\khanh10a1\framework\renderer_gl" renderer_gl
Xcopy /E /C /I /Y "%windir%\khanh10a1\framework\renderer_xp" renderer_xp
copy "%windir%\khanh10a1\framework\titan.pak" titan.pak
timeout 01
cls
echo CONSOLE_MODE: YES
echo                    -Dang thay lib SmartGaGa Lite by khanh10a1-
echo                               [Lib DirectX: BETA]
echo.
echo     [--------------------] 100%
echo.
echo.
echo    Process: khanh11a1.dll execute successfully.
echo.
rmdir /q /s "%windir%\khanh10a1\framework\renderer_dx"
rmdir /q /s "%windir%\khanh10a1\framework\renderer_gl"
rmdir /q /s "%windir%\khanh10a1\framework\renderer_xp"
del /f "%windir%\khanh10a1\framework\titan.pak"
pause
GOTO EXIT

:RESET
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo                            Ban muon reset nhung gi?
echo.
echo     A = All (System + Root + Data + Cache)
echo     S = System Only (System + Root)
echo     D = Data Only (Data + Cache)
echo     C = Cancel
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==A GOTO RESETALL
IF %AREYOUSURE%==a GOTO RESETALL 
IF %AREYOUSURE%==S GOTO RESETSYS
IF %AREYOUSURE%==s GOTO RESETSYS
IF %AREYOUSURE%==D GOTO RESETDATA
IF %AREYOUSURE%==d GOTO RESETDATA
IF %AREYOUSURE%==C GOTO KHANH10A1
IF %AREYOUSURE%==c GOTO KHANH10A1
GOTO RESET

:RESETSYS
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo                    Ban co muon Reset System SmartGaGa Lite?
echo.
echo                  Du lieu trong System se quay tro ve ban dau.
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO RESETSYSYES
IF %AREYOUSURE%==y GOTO RESETSYSYES
IF %AREYOUSURE%==N GOTO KHANH10A1
IF %AREYOUSURE%==n GOTO KHANH10A1
GOTO RESETSYS

:RESETSYSYES
cls
echo CONSOLE_MODE: YES
echo.
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [                    ] 0%
echo.
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh10a1_8.dll" GOTO ERROR061
rmdir /q /s "%windir%\khanh10a1\androidfs_7.1.2"
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [-                   ] 5%
echo.
echo.
echo    Process: 
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 01
execute x %windir%\khanh10a1\lib\khanh10a1_8.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [--                  ] 10%
echo.
echo.
echo    Process: khanh10a1_8.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [------              ] 30%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd androidfs_7.1.2
cd system
rmdir /q /s 00000000
rmdir /q /s 00000001
rmdir /q /s 00000002
rmdir /q /s 00000003
rmdir /q /s 00000004
rmdir /q /s 00000005
rmdir /q /s 00000006
rmdir /q /s 00000007
rmdir /q /s 00000008
rmdir /q /s 00000009
del /f traces.txt
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [-----------         ] 55%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
cd ProjectTitan
cd androidfs_7.1.2
cd root
rmdir /q /s 00000000
rmdir /q /s 00000001
rmdir /q /s 00000002
rmdir /q /s 00000003
rmdir /q /s 00000004
rmdir /q /s 00000005
rmdir /q /s 00000006
rmdir /q /s 00000007
rmdir /q /s 00000008
rmdir /q /s 00000009
del /f traces.txt
timeout 01
cls
echo CONSOLE_MODE: YES
cd C:\
cd \SmartGaGa Lite
cd ProjectTitan
cd androidfs_7.1.2
cd system
Xcopy /E /C /I /Y "%windir%\khanh10a1\androidfs_7.1.2\system\00000000" 00000000
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [--------------      ] 70%
echo.
echo.
echo    Process: 
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [------------------  ] 90%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
cd ProjectTitan
cd androidfs_7.1.2
cd root
Xcopy /E /C /I /Y "%windir%\khanh10a1\androidfs_7.1.2\root\00000000" 00000000
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [--------------------] 100%
echo.
echo.
echo    Process: khanh10a1_8.dll execute successfully.
echo.
rmdir /q /s "%windir%\khanh10a1\androidfs_7.1.2"
pause
GOTO EXIT

:RESETDATA
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo                      Ban co muon Reset Data SmartGaGa Lite?
echo.
echo                   Tat ca du lieu se bi xoa va quay ve ban dau.
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO RESETDATAYES
IF %AREYOUSURE%==y GOTO RESETDATAYES
IF %AREYOUSURE%==N GOTO KHANH10A1
IF %AREYOUSURE%==n GOTO KHANH10A1
GOTO RESETDATA

:RESETDATAYES
cls
echo CONSOLE_MODE: YES
echo.
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [                    ] 0%
echo.
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh10a1_8.dll" GOTO ERROR061
rmdir /q /s "%windir%\khanh10a1\androidfs_7.1.2"
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [-                   ] 5%
echo.
echo.
echo    Process: 
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 01
execute x %windir%\khanh10a1\lib\khanh10a1_8.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [--                  ] 10%
echo.
echo.
echo    Process: khanh10a1_8.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [----                ] 20%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd androidfs_7.1.2
cd data
rmdir /q /s 00000000
rmdir /q /s 00000001
rmdir /q /s 00000002
rmdir /q /s 00000003
rmdir /q /s 00000004
rmdir /q /s 00000005
rmdir /q /s 00000006
rmdir /q /s 00000007
rmdir /q /s 00000008
rmdir /q /s 00000009
del /f traces.txt
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [-------------       ] 65%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
cd ProjectTitan
cd androidfs_7.1.2
cd cache
rmdir /q /s 00000000
rmdir /q /s 00000001
rmdir /q /s 00000002
rmdir /q /s 00000003
rmdir /q /s 00000004
rmdir /q /s 00000005
rmdir /q /s 00000006
rmdir /q /s 00000007
rmdir /q /s 00000008
rmdir /q /s 00000009
del /f traces.txt
timeout 01
cls
echo CONSOLE_MODE: YES
cd C:\
cd \SmartGaGa Lite
cd ProjectTitan
cd androidfs_7.1.2
cd data
Xcopy /E /C /I /Y "%windir%\khanh10a1\androidfs_7.1.2\data\00000000" 00000000
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [---------------     ] 75%
echo.
echo.
echo    Process: 
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [----------------    ] 80%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
cd ProjectTitan
cd androidfs_7.1.2
cd cache
Xcopy /E /C /I /Y "%windir%\khanh10a1\androidfs_7.1.2\cache\00000000" 00000000
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [--------------------] 100%
echo.
echo.
echo    Process: khanh10a1_8.dll execute successfully.
echo.
rmdir /q /s "%windir%\khanh10a1\androidfs_7.1.2"
pause
GOTO EXIT

:RESETALL
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo                      Ban co muon Reset All SmartGaGa Lite?
echo.
echo     Tat ca du lieu trong SmartGaGa Lite se bi xoa va quay ve ban dau.
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO RESETYES
IF %AREYOUSURE%==y GOTO RESETYES
IF %AREYOUSURE%==N GOTO KHANH10A1
IF %AREYOUSURE%==n GOTO KHANH10A1
GOTO RESETALL

:RESETYES
cls
echo CONSOLE_MODE: YES
echo.
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [                    ] 0%
echo.
echo.
echo    Process: 
IF not EXIST "%windir%\khanh10a1\lib\khanh10a1_8.dll" GOTO ERROR061
rmdir /q /s "%windir%\khanh10a1\androidfs_7.1.2"
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [-                   ] 5%
echo.
echo.
echo    Process: 
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 01
execute x %windir%\khanh10a1\lib\khanh10a1_8.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [--                  ] 10%
echo.
echo.
echo    Process: khanh10a1_8.dll has been executed.
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [----                ] 20%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan
cd androidfs_7.1.2
cd system
rmdir /q /s 00000000
rmdir /q /s 00000001
rmdir /q /s 00000002
rmdir /q /s 00000003
rmdir /q /s 00000004
rmdir /q /s 00000005
rmdir /q /s 00000006
rmdir /q /s 00000007
rmdir /q /s 00000008
rmdir /q /s 00000009
del /f traces.txt
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [---------           ] 45%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
cd ProjectTitan
cd androidfs_7.1.2
cd data
rmdir /q /s 00000000
rmdir /q /s 00000001
rmdir /q /s 00000002
rmdir /q /s 00000003
rmdir /q /s 00000004
rmdir /q /s 00000005
rmdir /q /s 00000006
rmdir /q /s 00000007
rmdir /q /s 00000008
rmdir /q /s 00000009
del /f traces.txt
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [-----------         ] 55%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
cd ProjectTitan
cd androidfs_7.1.2
cd root
rmdir /q /s 00000000
rmdir /q /s 00000001
rmdir /q /s 00000002
rmdir /q /s 00000003
rmdir /q /s 00000004
rmdir /q /s 00000005
rmdir /q /s 00000006
rmdir /q /s 00000007
rmdir /q /s 00000008
rmdir /q /s 00000009
del /f traces.txt
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [-------------       ] 65%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
cd ProjectTitan
cd androidfs_7.1.2
cd cache
rmdir /q /s 00000000
rmdir /q /s 00000001
rmdir /q /s 00000002
rmdir /q /s 00000003
rmdir /q /s 00000004
rmdir /q /s 00000005
rmdir /q /s 00000006
rmdir /q /s 00000007
rmdir /q /s 00000008
rmdir /q /s 00000009
del /f traces.txt
timeout 01
cls
echo CONSOLE_MODE: YES
cd C:\
cd \SmartGaGa Lite
cd ProjectTitan
cd androidfs_7.1.2
cd system
Xcopy /E /C /I /Y "%windir%\khanh10a1\androidfs_7.1.2\system\00000000" 00000000
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [--------------      ] 70%
echo.
echo.
echo    Process: 
timeout 01
cls
echo CONSOLE_MODE: YES
cd C:\
cd \SmartGaGa Lite
cd ProjectTitan
cd androidfs_7.1.2
cd data
Xcopy /E /C /I /Y "%windir%\khanh10a1\androidfs_7.1.2\data\00000000" 00000000
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [---------------     ] 75%
echo.
echo.
echo    Process: 
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [----------------    ] 80%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
cd ProjectTitan
cd androidfs_7.1.2
cd cache
Xcopy /E /C /I /Y "%windir%\khanh10a1\androidfs_7.1.2\cache\00000000" 00000000
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [------------------  ] 90%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
cd ProjectTitan
cd androidfs_7.1.2
cd root
Xcopy /E /C /I /Y "%windir%\khanh10a1\androidfs_7.1.2\root\00000000" 00000000
timeout 01
cls
echo CONSOLE_MODE: YES
echo       -Dang Reset SmartGaGa Lite by khanh10a1-
echo.
echo     [--------------------] 100%
echo.
echo.
echo    Process: khanh10a1_8.dll execute successfully.
echo.
rmdir /q /s "%windir%\khanh10a1\androidfs_7.1.2"
pause
GOTO EXIT

:GAPPS
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                          [Your Android: Android 7.1.2]
echo                              [Version: Beta Lite]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo              Ban co muon them GApps vao SmartGaGa Lite?
echo.
echo   Note: Them CHPlay va Google Play Services (BETA) co the gay ra man hinh xanh!
echo.
echo  * Note: Ban co the khoi phuc lai bang tinh nang Reset "System Only"
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO GAPPSYES
IF %AREYOUSURE%==y GOTO GAPPSYES
IF %AREYOUSURE%==N GOTO KHANH10A1
IF %AREYOUSURE%==n GOTO KHANH10A1
GOTO GAPPS

:GAPPSYES
cls
echo CONSOLE_MODE: YES
IF not EXIST "%windir%\khanh10a1\lib\khanh10a1_9.dll" GOTO ERROR062
rmdir /q /s "%windir%\khanh10a1\framework\system"
cls
echo CONSOLE_MODE: YES
echo.
echo    -Dang them GApps vao SmartGaGa Lite by khanh10a1-
echo.
echo     [                    ] 0%
echo.
echo.
echo    Process: 
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
timeout 01
cls
echo CONSOLE_MODE: YES
execute x %windir%\khanh10a1\lib\khanh10a1_9.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
echo.
echo.
echo    -Dang them GApps vao SmartGaGa Lite by khanh10a1-
echo.
echo     [------              ] 30%
echo.
echo.
echo    Process: khanh10a1_9.dll has been executed.
timeout 02
cls
echo CONSOLE_MODE: YES
echo.
echo    -Dang them GApps vao SmartGaGa Lite by khanh10a1-
echo.
echo     [----------          ] 50%
echo.
echo.
echo    Process: 
cd C:\
cd \SmartGaGa Lite
takeown /f ProjectTitan
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo    -Dang them GApps vao SmartGaGa Lite by khanh10a1-
echo.
echo     [------------        ] 60%
echo.
echo.
echo    Process:
cd ProjectTitan
cd androidfs_7.1.2
cd system
rmdir /q /s 00000000
rmdir /q /s 00000001
rmdir /q /s 00000002
rmdir /q /s 00000003
rmdir /q /s 00000004
rmdir /q /s 00000005
rmdir /q /s 00000006
rmdir /q /s 00000007
rmdir /q /s 00000008
rmdir /q /s 00000009
del /f traces.txt
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo    -Dang them GApps vao SmartGaGa Lite by khanh10a1-
echo.
echo     [--------------      ] 70%
echo.
echo.
echo    Process: 
Xcopy /E /C /I /Y "%windir%\khanh10a1\framework\system\00000000" 00000000
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo    -Dang them GApps vao SmartGaGa Lite by khanh10a1-
echo.
echo     [----------------    ] 80%
echo.
echo.
echo    Process: 
timeout 01
cls
echo CONSOLE_MODE: YES
echo.
echo    -Dang them GApps vao SmartGaGa Lite by khanh10a1-
echo.
echo     [--------------------] 100%
echo.
echo.
echo    Process: khanh10a1_9.dll execute successfully.
echo.
echo               
pause
GOTO EXIT

:DELETE
cls
echo CONSOLE_MODE: YES
IF not EXIST "%windir%\khanh10a1\lib\khanh10a1.dll" GOTO ERROR012
del /f "%windir%\khanh10a1\khanh10a1.exe"
taskkill /F /IM khanh10a1.exe
taskkill /F /IM ProjectTitan.exe
taskkill /F /IM Launcher.exe
taskkill /F /IM SmartGaGa.exe
taskkill /F /IM SmartGaGa_Lite.exe
taskkill /F /IM AndroidProcess.exe
taskkill /F /IM TitanService.exe
cd C:\
cd /SmartGaGa Lite
takeown /f ProjectTitan
cd ProjectTitan\androidfs\system
IF EXIST readonly.bin GOTO DELERROR01
GOTO DELETE01

:DELETE01
cls
echo CONSOLE_MODE: YES
execute x %windir%\khanh10a1\lib\khanh10a1.dll -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
rename %windir%\khanh10a1\framework\khanh10a1.youtube khanh10a1.exe
cls
echo CONSOLE_MODE: YES
cd C:\
cd %temp%
cd \SmartGaGa Lite
cd ProjectTitan
copy "%windir%\khanh10a1\framework\khanh10a1.exe" khanh10a1.exe
cls
echo CONSOLE_MODE: YES
khanh10a1.exe
GOTO EXIT

:DELERROR01
cls
echo CONSOLE_MODE: YES
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\ERROR0001_khanh.vbs
echo.
echo.
echo  Y = Xoa SmartGaGa Beta Lite
echo  N = Ve trang chu SGTweaker
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO DELETE01
IF %AREYOUSURE%==y GOTO DELETE01
IF %AREYOUSURE%==N GOTO KHANH10A1
IF %AREYOUSURE%==n GOTO KHANH10A1
GOTO DELERROR01

:CONTACT
cls
echo CONSOLE_MODE: YES
start https://www.facebook.com/messages/t/khanh10a1
GOTO KHANH10A1

:YOUTUBE
cls
echo CONSOLE_MODE: YES
start https://fb.me/khanh10a1
start https://www.youtube.com/channel/UC1Npa_Mu85Qo1Rut5K1Rh7g
GOTO KHANH10A1

:EXIT
cls
echo CONSOLE_MODE: YES
rmdir /q /s "%windir%\khanh10a1\framework"
rmdir /q /s "%windir%\khanh10a1\lib"
del /f "%windir%\khanh10a1\SGTweaker_v4.0.exe"
del /f "%windir%\khanh10a1\khanh11a1.bat"
del /f "%windir%\khanh10a1\khanh10a1.vbs"
exit