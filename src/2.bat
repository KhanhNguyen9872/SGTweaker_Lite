@echo off
color 17
cls

:KHANH11A1
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                          Thay doi do phan giai gia lap
echo.
echo.
echo.
echo         [Yeu cau: Chay SmartGaGa Lite truoc khi thay doi do phan giai]
echo             [Required: Run SmartGaGa Lite before use this tweak]
echo.
echo     1 = Ngang/Landspace (Ex: 960x540)
echo     2 = Doc/Portrait (Ex: 540x960)
echo     E = Thoat (Exit)
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==1 GOTO RESOLUTIONLAN
IF %AREYOUSURE%==2 GOTO RESOLUTIONPOR
IF %AREYOUSURE%==C GOTO EXIT
IF %AREYOUSURE%==c GOTO EXIT
GOTO KHANH11A1

:RESOLUTIONLAN
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                          Thay doi do phan giai gia lap
echo            Co the ap dung cho Gameloop, TGB, LDPlayer, Nox,etc...
echo                                [Ngang\Landspace]
echo.
echo         [Yeu cau: Chay SmartGaGa Lite truoc khi thay doi do phan giai]
echo             [Required: Run SmartGaGa Lite before use this tweak]
echo.
echo     0 = Reset Do phan giai (Reset Resolution)
echo     1 = 256x144 - 120dpi (144p)
echo     2 = 427x240 - 140dpi (240p)
echo     3 = 640x360 - 150dpi (360p)
echo     4 = 854x480 - 160dpi (480p)
echo     5 = 960x540 - 160dpi (540p)
echo     6 = 1280x720 - 240dpi (720p)
echo     7 = 1600x900 - 240dpi (900p)
echo     8 = 1920x1080 - 320dpi (1080p)
echo     9 = 2560x1440 - 360dpi (1440p)
echo     B = Quay tro lai (Back)
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==0 GOTO RESET
IF %AREYOUSURE%==1 GOTO 144P
IF %AREYOUSURE%==2 GOTO 240P
IF %AREYOUSURE%==3 GOTO 360P
IF %AREYOUSURE%==4 GOTO 480P
IF %AREYOUSURE%==5 GOTO 540P
IF %AREYOUSURE%==6 GOTO 720P
IF %AREYOUSURE%==7 GOTO 900P
IF %AREYOUSURE%==8 GOTO 1080P
IF %AREYOUSURE%==9 GOTO 1440P
IF %AREYOUSURE%==B GOTO KHANH11A1
IF %AREYOUSURE%==b GOTO KHANH11A1
GOTO RESOLUTIONLAN

:RESOLUTIONPOR
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo                          Thay doi do phan giai gia lap
echo            Co the ap dung cho Gameloop, TGB, LDPlayer, Nox,etc...
echo                                 [Doc\Portrait]
echo.
echo         [Yeu cau: Chay SmartGaGa Lite truoc khi thay doi do phan giai]
echo             [Required: Run SmartGaGa Lite before use this tweak]
echo.
echo     0 = Reset Do phan giai (Reset Resolution)
echo     1 = 144x256 - 130dpi (144p)
echo     2 = 240x427 - 140dpi (240p)
echo     3 = 360x640 - 160dpi (360p)
echo     4 = 480x854 - 180dpi (480p)
echo     5 = 540x960 - 240dpi (540p)
echo     6 = 720x1280 - 320dpi (720p)
echo     7 = 900x1600 - 360dpi (900p)
echo     8 = 1080x1920 - 480dpi (1080p)
echo     9 = 1440x2560 - 520dpi (1440p)
echo     B = Quay tro lai (Back)
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==0 GOTO RESET
IF %AREYOUSURE%==1 GOTO 144PPOR
IF %AREYOUSURE%==2 GOTO 240PPOR
IF %AREYOUSURE%==3 GOTO 360PPOR
IF %AREYOUSURE%==4 GOTO 480PPOR
IF %AREYOUSURE%==5 GOTO 540PPOR
IF %AREYOUSURE%==6 GOTO 720PPOR
IF %AREYOUSURE%==7 GOTO 900PPOR
IF %AREYOUSURE%==8 GOTO 1080PPOR
IF %AREYOUSURE%==9 GOTO 1440PPOR
IF %AREYOUSURE%==B GOTO KHANH11A1
IF %AREYOUSURE%==b GOTO KHANH11A1
GOTO RESOLUTIONPOR

:RESET
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [Reset Resolution]
echo.
echo     Ban co muon Reset Do phan giai?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO RESETYES
IF %AREYOUSURE%==y GOTO RESETYES
IF %AREYOUSURE%==N GOTO KHANH11A1
IF %AREYOUSURE%==n GOTO KHANH11A1
GOTO RESET

:RESETYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [Reset Resolution]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [Reset Resolution]
echo.
echo    Process: Reset Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size reset
%windir%\khanh10a1\framework\adb.exe shell wm density reset
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [Reset Resolution]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:BACK
cls
echo CONSOLE_MODE: YES
GOTO KHANH11A1

:144P
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [256x144 - 120dpi]
echo.
echo     Ban co muon doi do phan giai thanh 256x144 - 120dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 144PYES
IF %AREYOUSURE%==y GOTO 144PYES
IF %AREYOUSURE%==N GOTO RESOLUTIONLAN
IF %AREYOUSURE%==n GOTO RESOLUTIONLAN
GOTO 144P

:144PYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [256x144 - 120dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [256x144 - 120dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 256x144
%windir%\khanh10a1\framework\adb.exe shell wm density 120
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [256x144 - 120dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:240P
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [427x240 - 140dpi]
echo.
echo     Ban co muon doi do phan giai thanh 427x240 - 140dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 240PYES
IF %AREYOUSURE%==y GOTO 240PYES
IF %AREYOUSURE%==N GOTO RESOLUTIONLAN
IF %AREYOUSURE%==n GOTO RESOLUTIONLAN
GOTO 240P

:240PYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [427x240 - 140dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [427x240 - 140dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 427x240
%windir%\khanh10a1\framework\adb.exe shell wm density 140 
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [427x240 - 140dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:360P
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [640x360 - 150dpi]
echo.
echo     Ban co muon doi do phan giai thanh 640x360 - 150dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 360PYES
IF %AREYOUSURE%==y GOTO 360PYES
IF %AREYOUSURE%==N GOTO RESOLUTIONLAN
IF %AREYOUSURE%==n GOTO RESOLUTIONLAN
GOTO 360P

:360PYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [640x360 - 150dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [640x360 - 150dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 640x360
%windir%\khanh10a1\framework\adb.exe shell wm density 150 
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [640x360 - 150dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:480P
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [854x480 - 160dpi]
echo.
echo     Ban co muon doi do phan giai thanh 854x480 - 160dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 480PYES
IF %AREYOUSURE%==y GOTO 480PYES
IF %AREYOUSURE%==N GOTO RESOLUTIONLAN
IF %AREYOUSURE%==n GOTO RESOLUTIONLAN
GOTO 480P

:480PYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [854x480 - 160dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [854x480 - 160dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 854x480
%windir%\khanh10a1\framework\adb.exe shell wm density 160 
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [854x480 - 160dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:540P
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [960x540 - 160dpi]
echo.
echo     Ban co muon doi do phan giai thanh 960x540 - 160dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 540PYES
IF %AREYOUSURE%==y GOTO 540PYES
IF %AREYOUSURE%==N GOTO RESOLUTIONLAN
IF %AREYOUSURE%==n GOTO RESOLUTIONLAN
GOTO 540P

:540PYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [960x540 - 160dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [960x540 - 160dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 960x540
%windir%\khanh10a1\framework\adb.exe shell wm density 160 
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [960x540 - 160dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:720P
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1280x720 - 240dpi]
echo.
echo     Ban co muon doi do phan giai thanh 1280x720 - 240dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 720PYES
IF %AREYOUSURE%==y GOTO 720PYES
IF %AREYOUSURE%==N GOTO RESOLUTIONLAN
IF %AREYOUSURE%==n GOTO RESOLUTIONLAN
GOTO 720P

:720PYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1280x720 - 240dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1280x720 - 240dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 1280x720
%windir%\khanh10a1\framework\adb.exe shell wm density 240
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1280x720 - 240dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:900P
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1600x900 - 240dpi]
echo.
echo     Ban co muon doi do phan giai thanh 1600x900 - 240dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 900PYES
IF %AREYOUSURE%==y GOTO 900PYES
IF %AREYOUSURE%==N GOTO RESOLUTIONLAN
IF %AREYOUSURE%==n GOTO RESOLUTIONLAN
GOTO 900P

:900PYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1600x900 - 240dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1600x900 - 240dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 1600x900
%windir%\khanh10a1\framework\adb.exe shell wm density 240
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1600x900 - 240dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:1080P
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1920x1080 - 320dpi]
echo.
echo     Ban co muon doi do phan giai thanh 1920x1080 - 320dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 1080PYES
IF %AREYOUSURE%==y GOTO 1080PYES
IF %AREYOUSURE%==N GOTO RESOLUTIONLAN
IF %AREYOUSURE%==n GOTO RESOLUTIONLAN
GOTO 1080P

:1080PYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1920x1080 - 320dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1920x1080 - 320dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 1920x1080
%windir%\khanh10a1\framework\adb.exe shell wm density 320
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1920x1080 - 320dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:1440P
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [2560x1440 - 360dpi]
echo.
echo     Ban co muon doi do phan giai thanh 2560x1440 - 360dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 1440PYES
IF %AREYOUSURE%==y GOTO 1440PYES
IF %AREYOUSURE%==N GOTO RESOLUTIONLAN
IF %AREYOUSURE%==n GOTO RESOLUTIONLAN
GOTO 1440P

:1440PYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [2560x1440 - 360dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [2560x1440 - 360dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 2560x1440
%windir%\khanh10a1\framework\adb.exe shell wm density 360
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [2560x1440 - 360dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:144PPOR
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [144x256 - 130dpi]
echo.
echo     Ban co muon doi do phan giai thanh 144x256 - 130dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 144PPORYES
IF %AREYOUSURE%==y GOTO 144PPORYES
IF %AREYOUSURE%==N GOTO RESOLUTIONPOR
IF %AREYOUSURE%==n GOTO RESOLUTIONPOR
GOTO 144PPOR

:144PPORYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [144x256 - 130dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [144x256 - 130dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 144x256
%windir%\khanh10a1\framework\adb.exe shell wm density 130
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [144x256 - 130dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:240PPOR
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [240x427 - 140dpi]
echo.
echo     Ban co muon doi do phan giai thanh 240x427 - 140dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 240PPORYES
IF %AREYOUSURE%==y GOTO 240PPORYES
IF %AREYOUSURE%==N GOTO RESOLUTIONPOR
IF %AREYOUSURE%==n GOTO RESOLUTIONPOR
GOTO 240PPOR

:240PPORYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [240x427 - 140dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [240x427 - 140dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 240x427
%windir%\khanh10a1\framework\adb.exe shell wm density 140
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [240x427 - 140dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:360PPOR
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [360x640 - 160dpi]
echo.
echo     Ban co muon doi do phan giai thanh 360x640 - 170dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 360PPORYES
IF %AREYOUSURE%==y GOTO 360PPORYES
IF %AREYOUSURE%==N GOTO RESOLUTIONPOR
IF %AREYOUSURE%==n GOTO RESOLUTIONPOR
GOTO 360PPOR

:360PPORYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [360x640 - 160dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [360x640 - 160dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 360x640
%windir%\khanh10a1\framework\adb.exe shell wm density 160 
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [360x640 - 160dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:480PPOR
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [480x854 - 180dpi]
echo.
echo     Ban co muon doi do phan giai thanh 480x854 - 180dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 480PPORYES
IF %AREYOUSURE%==y GOTO 480PPORYES
IF %AREYOUSURE%==N GOTO RESOLUTIONPOR
IF %AREYOUSURE%==n GOTO RESOLUTIONPOR
GOTO 480PPOR

:480PPORYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [480x854 - 180dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [480x854 - 180dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 480x854
%windir%\khanh10a1\framework\adb.exe shell wm density 180 
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [480x854 - 180dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:540PPOR
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [540x960 - 240dpi]
echo.
echo     Ban co muon doi do phan giai thanh 540x960 - 240dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 540PPORYES
IF %AREYOUSURE%==y GOTO 540PPORYES
IF %AREYOUSURE%==N GOTO RESOLUTIONPOR
IF %AREYOUSURE%==n GOTO RESOLUTIONPOR
GOTO 540PPOR

:540PPORYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [540x960 - 240dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [540x960 - 240dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 540x960
%windir%\khanh10a1\framework\adb.exe shell wm density 240
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                                [540x960 - 240dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:720PPOR
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [720x1280 - 320dpi]
echo.
echo     Ban co muon doi do phan giai thanh 720x1280 - 320dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 720PPORYES
IF %AREYOUSURE%==y GOTO 720PPORYES
IF %AREYOUSURE%==N GOTO RESOLUTIONPOR
IF %AREYOUSURE%==n GOTO RESOLUTIONPOR
GOTO 720PPOR

:720PPORYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [720x1280 - 320dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [720x1280 - 320dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 720x1280
%windir%\khanh10a1\framework\adb.exe shell wm density 320
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [720x1280 - 320dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:900PPOR
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [900x1600 - 240dpi]
echo.
echo     Ban co muon doi do phan giai thanh 900x1600 - 240dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 900PPORYES
IF %AREYOUSURE%==y GOTO 900PPORYES
IF %AREYOUSURE%==N GOTO RESOLUTIONPOR
IF %AREYOUSURE%==n GOTO RESOLUTIONPOR
GOTO 900PPOR

:900PPORYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [900x1600 - 360dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [900x1600 - 360dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 900x1600
%windir%\khanh10a1\framework\adb.exe shell wm density 360
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [900x1600 - 360dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:1080PPOR
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1080x1920 - 480dpi]
echo.
echo     Ban co muon doi do phan giai thanh 1080x1920 - 480dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 1080PPORYES
IF %AREYOUSURE%==y GOTO 1080PPORYES
IF %AREYOUSURE%==N GOTO RESOLUTIONPOR
IF %AREYOUSURE%==n GOTO RESOLUTIONPOR
GOTO 1080PPOR

:1080PPORYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1080x1920 - 480dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1080x1920 - 480dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 1080x1920
%windir%\khanh10a1\framework\adb.exe shell wm density 480
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1080x1920 - 480dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:1440PPOR
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1440x2560 - 520dpi]
echo.
echo     Ban co muon doi do phan giai thanh 1440x2560 - 520dpi?
echo.
echo     Y = Yes
echo     N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO 1440PYES
IF %AREYOUSURE%==y GOTO 1440PYES
IF %AREYOUSURE%==N GOTO RESOLUTIONPOR
IF %AREYOUSURE%==n GOTO RESOLUTIONPOR
GOTO 1440PPOR

:1440PPORYES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1440x2560 - 520dpi]
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1440x2560 - 520dpi]
echo.
echo    Process: Change Resolution.....
echo.
%windir%\khanh10a1\framework\adb.exe shell wm size 1440x2560
%windir%\khanh10a1\framework\adb.exe shell wm density 520
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                            Dang thay doi Do phan giai
echo                               [1440x2560 - 520dpi]
echo.
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:EXIT
cls
echo CONSOLE_MODE: YES
rmdir /q /s "%windir%\khanh10a1\framework"
rmdir /q /s "%windir%\khanh10a1\lib"
exit