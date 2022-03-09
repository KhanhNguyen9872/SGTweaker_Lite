@echo off
color 17
cls

:AUTOINSTALL
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo preparing_install...
echo.
echo.
timeout 02
GOTO AUTOINSTALL01

:AUTOINSTALL01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo preparing_install_ok
echo download_mode_enabled
echo.
echo      1 = SmartGaGa Beta Lite (Android 4.4.2)
echo      2 = SmartGaGa Beta Lite (Android 7.1.2)
echo      3 = SmartGaGa MOD v3.2 Lite (Android 4.4.2)
echo      4 = Back
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==1 GOTO ANDROID4
IF %AREYOUSURE%==2 GOTO ANDROID7
IF %AREYOUSURE%==3 GOTO ANDROID44
IF %AREYOUSURE%==4 GOTO 02
GOTO AUTOINSTALL01

:ANDROID4
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo    Ban co muon cai SmartGaGa Beta Lite (Android 4.4.2)?
echo    Are you sure to install SmartGaGa Beta Lite (Android 4.4.2)?
echo.
echo  * Vui long xoa SmartGaGa Beta Lite cu truoc khi dung tinh nang nay!
echo  * Please uninstall old version of SmartGaGa Beta Lite before use this tweak!
echo.
echo      Y = Yes
echo      N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO ANDROID4YES
IF %AREYOUSURE%==y GOTO ANDROID4YES
IF %AREYOUSURE%==N GOTO AUTOINSTALL01
IF %AREYOUSURE%==n GOTO AUTOINSTALL01
GOTO ANDROID4

:ERRORDOWNLOAD00
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo download_failed
echo.
echo            Ban co muon thu lai?
echo            Do you want to try again?
echo.
echo      Y = Yes (Try again)
echo      N = No (Exit)
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO ANDROID4YES
IF %AREYOUSURE%==y GOTO ANDROID4YES
IF %AREYOUSURE%==N GOTO EXIT
IF %AREYOUSURE%==n GOTO EXIT
GOTO ERRORDOWNLOAD00

:ERRORDOWNLOAD01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo download_failed
echo.
echo            Ban co muon thu lai?
echo            Do you want to try again?
echo.
echo      Y = Yes (Try again)
echo      N = No (Exit)
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO ANDROID7YES
IF %AREYOUSURE%==y GOTO ANDROID7YES
IF %AREYOUSURE%==N GOTO EXIT
IF %AREYOUSURE%==n GOTO EXIT
GOTO ERRORDOWNLOAD01

:ERRORDOWNLOAD02
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo download_failed
echo.
echo    Loi khong the download file thanh cong
echo    Error download file
echo.
echo            Ban co muon thu lai?
echo            Do you want to try again?
echo.
echo      Y = Yes (Try again)
echo      N = No (Exit)
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO ANDROID44YES
IF %AREYOUSURE%==y GOTO ANDROID44YES
IF %AREYOUSURE%==N GOTO EXIT
IF %AREYOUSURE%==n GOTO EXIT
GOTO ERRORDOWNLOAD02

:ERROREXIST00
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo sgtweaker_detected_smartgaga
echo error_install
echo.
echo     SGTweaker khong the cai SmartGaGa Beta Lite Android 4.4.2
echo     SGTweaker can't install SmartGaGa Beta Lite Android 4.4.2
echo.
echo     Vui long xoa SmartGaGa Beta Lite Android 4.4.2 truoc khi cai dat
echo     Please uninstall SmartGaGa Beta Lite Android 4.4.2 before install
echo.
echo     Press any key to exit SGTweaker
pause
GOTO EXIT

:ERROREXIST01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo sgtweaker_detected_smartgaga
echo error_install
echo.
echo     SGTweaker khong the cai SmartGaGa Beta Lite Android 7.1.2
echo     SGTweaker can't install SmartGaGa Beta Lite Android 7.1.2
echo.
echo     Vui long xoa SmartGaGa Beta Lite Android 7.1.2 truoc khi cai dat
echo     Please uninstall SmartGaGa Beta Lite Android 7.1.2 before install
echo.
echo     Press any key to exit SGTweaker
pause
GOTO EXIT

:ERROREXIST02
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo sgtweaker_detected_smartgaga
echo error_install
echo.
echo     SGTweaker khong the cai SmartGaGa MOD v3.2 Lite Android 4.4.2
echo     SGTweaker can't install SmartGaGa MOD v3.2 Lite Android 4.4.2
echo.
echo     Vui long xoa SmartGaGa MOD v3.2 Lite Android 4.4.2 truoc khi cai dat
echo     Please uninstall SmartGaGa MOD v3.2 Lite Android 4.4.2 before install
echo.
echo     Press any key to exit SGTweaker
pause
GOTO EXIT

:ANDROID4YES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo please_wait....
echo.
cd C:\
cd /SmartGaGa Lite
cd ProjectTitan\androidfs\system
IF EXIST readonly.bin GOTO ERROREXIST00
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo preparing_download....
echo.
mkdir "%windir%\khanh10a1\framework\download_mode\beta4"
cd %windir%\khanh10a1\framework
takeown /f download_mode
icacls "%windir%\khanh10a1\framework\download_mode" /grant %username%:(OI)(CI)F /T
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo preparing_download_ok
echo starting_download...
echo.
cd %windir%\khanh10a1\framework\download_mode
khanh_download.exe --no-conf -o "BETA4_AUTO_khanh11a1.exe" --allow-overwrite=true --auto-file-renaming=true --file-allocation=none "https://gqeg2a.dm.files.1drv.com/y4mF96rZilyoY_fVQplOKPYDPxBBwwzzvxN89R9L5ZoQkwesMAP2hovy80j9CGGMS8puKP5tuaJHwe5cI2pYS_70VRL2JuW4_yA0artoA3fbG0JxLDwB1YJlxU4XsoCObZHi5AYcWLkQKdzYRGR542DioNsA27f1DMgJXSTHZ-xJiIGlQNmayN80fvgkIU8QM5v2ILGu0PV6C7_n9rtR_B7yg"
cd %windir%\khanh10a1\framework\download_mode
IF not EXIST BETA4_AUTO_khanh11a1.exe GOTO ERRORDOWNLOAD00
%windir%\khanh10a1\framework\download_mode\BETA4_AUTO_khanh11a1.exe
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo preparing_download_ok
echo download_completed
echo starting_install...
echo.
echo    SmartGaGa Beta Lite Android 4.4.2
echo  Copyright file: Khanh Vui Nguyen Van
echo  Facebook: https://fb.me/khanh10a1
echo  Youtube: https://youtube.com/c/KhanhNguyen9872
echo    Installing. Please wait....
echo.
cd C:\
cd /SmartGaGa Lite
cd ProjectTitan\androidfs\system
IF EXIST readonly.bin GOTO ERRORINSTALLEXIST00
%windir%\khanh10a1\framework\download_mode\beta4\base4_beta_khanh11a1.exe
cd C:\
cd /SmartGaGa Lite
cd ProjectTitan\Engine
IF EXIST AndroidProcess.exe GOTO SKIPINSTALLENGINE00
IF EXIST khanh10a1.exe GOTO SKIPINSTALLENGINE00
IF EXIST AndroidKernelX64EV.sys GOTO SKIPINSTALLENGINE00
%windir%\khanh10a1\framework\download_mode\beta4\engine_beta_khanh11a1.exe
mklink "%userprofile%\Desktop\SmartGaGa_Beta_Lite.lnk" "C:\SmartGaGa Lite\ProjectTitan\Engine\khanh10a1.exe"
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo preparing_download_ok
echo download_completed
echo install_completed
echo.
pause
GOTO EXIT

:SKIPINSTALLENGINE00
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo.
echo preparing_download_ok
echo download_completed
echo detected_engine
echo skip_install_engine
echo.
cd C:\
cd /SmartGaGa Lite
cd ProjectTitan\Engine
mklink "%userprofile%\Desktop\SmartGaGa_Beta_Lite.lnk" "C:\SmartGaGa Lite\ProjectTitan\Engine\khanh10a1.exe"
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo preparing_download_ok
echo download_completed
echo detected_engine
echo skip_install_engine
echo install_completed
echo.
pause
GOTO EXIT

:ANDROID44
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo    Ban co muon cai SmartGaGa MOD v3.2 Lite (Android 4.4.2)?
echo    Are you sure to install SmartGaGa MOD v3.2 Lite (Android 4.4.2)?
echo.
echo  * Vui long xoa SmartGaGa Beta Lite cu truoc khi dung tinh nang nay!
echo  * Please uninstall old version of SmartGaGa Beta Lite before use this tweak!
echo.
echo      Y = Yes
echo      N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO ANDROID44YES
IF %AREYOUSURE%==y GOTO ANDROID44YES
IF %AREYOUSURE%==N GOTO AUTOINSTALL01
IF %AREYOUSURE%==n GOTO AUTOINSTALL01
GOTO ANDROID44

:ANDROID44YES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo please_wait....
echo.
cd C:\SmartGaGa_Lite\ProjectTitan\androidfs\system
IF EXIST readonly.bin GOTO ERROREXIST02
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo preparing_download....
echo.
mkdir "%windir%\khanh10a1\framework\download_mode\MOD324"
cd %windir%\khanh10a1\framework
takeown /f download_mode
icacls "%windir%\khanh10a1\framework\download_mode" /grant %username%:(OI)(CI)F /T
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo preparing_download_ok
echo starting_download...
echo.
cd %windir%\khanh10a1\framework\download_mode
khanh_download.exe --no-conf -o "MOD4_AUTO_khanh11a1.exe" --allow-overwrite=true --auto-file-renaming=true --file-allocation=none "https://gqchtq.dm.files.1drv.com/y4mH7y4qO3MT07tDLiaW-eIZzvA4-rF_GMTr_l0L5tamXyK1LSZHpfzQrqyPoeIq-Qd7LOXFNnKA05vkf-8oTx3DsWtjlpIEWa0UAT96ORrOvZScB26_bTprH3uXu2gQr5cHLMPZvNCIDYC_lsuZZTyTQjr9x7fXRbJbcqgzuvXnR2f_B2H92Ax8z4aJS4Uca8CCA-_7-wa8i2VwB574It62A"
cd %windir%\khanh10a1\framework\download_mode
IF not EXIST MOD4_AUTO_khanh11a1.exe GOTO ERRORDOWNLOAD02
%windir%\khanh10a1\framework\download_mode\MOD4_AUTO_khanh11a1.exe
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo preparing_download_ok
echo download_completed
echo starting_install...
echo.
echo    SmartGaGa MOD v3.2 Lite
echo  Copyright file: Khanh Vui Nguyen Van
echo  Facebook: https://fb.me/khanh10a1
echo  Youtube: https://youtube.com/c/KhanhNguyen9872
echo    Installing. Please wait....
echo.
cd C:\SmartGaGa_Lite\ProjectTitan\androidfs\system
IF EXIST readonly.bin GOTO ERROREXIST02
%windir%\khanh10a1\framework\download_mode\MOD324\base4_MOD3-2_khanh11a1.exe
cd C:\SmartGaGa_Lite\ProjectTitan\Engine
IF EXIST AndroidProcess.exe GOTO SKIPINSTALLENGINE00
IF EXIST khanh10a1.exe GOTO SKIPINSTALLENGINE00
IF EXIST AndroidKernelX64EV.sys GOTO SKIPINSTALLENGINE00
%windir%\khanh10a1\framework\download_mode\MOD324\engine_MODv3-2_khanh11a1.exe
mklink "%userprofile%\Desktop\SmartGaGa_MODv3.2_Lite.lnk" "C:\SmartGaGa_Lite\ProjectTitan\Engine\ProjectTitan.exe"
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo preparing_download_ok
echo download_completed
echo install_completed
echo.
pause
GOTO EXIT

:ANDROID7
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo    Ban co muon cai SmartGaGa Beta Lite (Android 7.1.2)?
echo    Are you sure to install SmartGaGa Beta Lite (Android 7.1.2)?
echo.
echo  * Vui long xoa SmartGaGa Beta Lite cu truoc khi dung tinh nang nay!
echo  * Please uninstall old version of SmartGaGa Beta Lite before use this tweak!
echo.
echo      Y = Yes
echo      N = No
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==Y GOTO ANDROID7YES
IF %AREYOUSURE%==y GOTO ANDROID7YES
IF %AREYOUSURE%==N GOTO AUTOINSTALL01
IF %AREYOUSURE%==n GOTO AUTOINSTALL01
GOTO ANDROID7

:ANDROID7YES
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo please_wait....
echo.
cd C:\
cd /SmartGaGa Lite
cd ProjectTitan\androidfs_7.1.2\system
IF EXIST readonly.bin GOTO ERROREXIST01
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo preparing_download....
echo.
mkdir "%windir%\khanh10a1\framework\download_mode\beta7"
cd %windir%\khanh10a1\framework
takeown /f download_mode
icacls "%windir%\khanh10a1\framework\download_mode" /grant %username%:(OI)(CI)F /T
timeout 01
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo preparing_download_ok
echo starting_download...
echo.
cd %windir%\khanh10a1\framework\download_mode
khanh_download.exe --no-conf -o "BETA7_AUTO_khanh11a1.exe" --allow-overwrite=true --auto-file-renaming=true --file-allocation=none "https://gqfryw.dm.files.1drv.com/y4m6UvtVA8Y6JyXR_BIZymAzQsZeD1bmvZzJu3j45pDElpAfNLlnGhIHLydR6XTV3czyAYLWK94fcKUJzWlPd3DOyMBQgu9oDtqAXa_4lmaL7BN-N1VnhgGLkjFK5l6nhfxVa1SPM-wJ0li0MwyHMHdvH2tAjbE8eRPGgZ2F6vzDyDeL3g-lY3T4-1cioTXlBScryFFfptZbLaycjfw3sxoqw"
cd %windir%\khanh10a1\framework\download_mode
IF not EXIST BETA7_AUTO_khanh11a1.exe GOTO ERRORDOWNLOAD01
%windir%\khanh10a1\framework\download_mode\BETA7_AUTO_khanh11a1.exe
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo preparing_download_ok
echo download_completed
echo starting_install...
echo.
echo    SmartGaGa Beta Lite Android 7.1.2
echo  Copyright file: Khanh Vui Nguyen Van
echo  Facebook: https://fb.me/khanh10a1
echo  Youtube: https://youtube.com/c/KhanhNguyen9872
echo    Installing. Please wait....
echo.
cd C:\
cd /SmartGaGa Lite
cd ProjectTitan\androidfs_7.1.2\system
IF EXIST readonly.bin GOTO ERRORINSTALLEXIST01
%windir%\khanh10a1\framework\download_mode\beta7\base7_beta_khanh11a1.exe
cd C:\
cd /SmartGaGa Lite
cd ProjectTitan\Engine
IF EXIST AndroidProcess.exe GOTO SKIPINSTALLENGINE00
IF EXIST khanh10a1.exe GOTO SKIPINSTALLENGINE00
IF EXIST AndroidKernelX64EV.sys GOTO SKIPINSTALLENGINE00
%windir%\khanh10a1\framework\download_mode\beta7\engine_beta_khanh11a1.exe
mklink "%userprofile%\Desktop\SmartGaGa_Beta_Lite.lnk" "C:\SmartGaGa Lite\ProjectTitan\Engine\khanh10a1.exe"
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo                                 [Download Mode]
echo preparing_download_ok
echo download_completed
echo install_completed
echo.
pause
GOTO EXIT

:EXIT
cls
echo CONSOLE_MODE: YES
rmdir /q /s "%windir%\khanh10a1\framework"
rmdir /q /s "%windir%\khanh10a1\lib"
del /f "%windir%\khanh10a1\SGTweaker_v4.0.exe"
del /f "%windir%\khanh10a1\khanh11a1.bat"
del /f "%windir%\khanh10a1\khanh10a1.vbs"
exit