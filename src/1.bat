@echo off
color 17
cls

:START
cls
echo CONSOLE_MODE: YES
echo                                 [Administrator]
echo.
echo                      - Tools SmartGaGa Lite by khanh10a1 -
echo.
echo                         Cai dat Game vao SmartGaGa Lite
echo.
echo                   Yeu cau: Phai co File Zip cua Game muon cai
echo            Chu y: Phai mo SmartGaGa Lite thi moi co the cai game duoc
echo.
echo     0 = Tai file ZIP cua Game
echo     1 = Avatar Musik 1.0.1 (Phien ban se ngung hoat dong tu 26/01/2021)
echo     2 = Lien Quan Mobile
echo     3 = Free Fire
echo     4 = Free Fire MAX
echo     5 = Call of Duty VNG
echo     C = Cancel
echo.
SET /P AREYOUSURE=Lua chon cua ban: 
IF %AREYOUSURE%==0 GOTO DOWNLOADZIP
IF %AREYOUSURE%==1 GOTO STARTAVATARMUSIK
IF %AREYOUSURE%==2 GOTO STARTLIENQUAN
IF %AREYOUSURE%==3 GOTO STARTFREEFIRE
IF %AREYOUSURE%==4 GOTO STARTFREEFIREMAX
IF %AREYOUSURE%==5 GOTO STARTCALLOFDUTYVNG
IF %AREYOUSURE%==C GOTO EXIT
IF %AREYOUSURE%==c GOTO EXIT
GOTO START

:DOWNLOADZIP
cls
echo CONSOLE_MODE: YES
start https://anotepad.com/notes/byfb8pbx
cls
GOTO START

:STARTCALLOFDUTYVNG
cls
echo CONSOLE_MODE: YES
echo.
echo            Vui long doc file Readme.txt neu ban chua biet!
echo.
%windir%\explorer.exe "%windir%\khanh10a1\app"
pause
GOTO CALLOFDUTY

:CALLOFDUTYNOTFOUND
cls
echo CONSOLE_MODE: YES
echo.
echo   ERROR: Khong tim thay File ZIP
echo   Hay chac chan ban da doi ten file chinh xac, hoac da tat diet virus
echo.
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\khanh11a1_CODNF.vbs
pause
GOTO START

:CALLOFDUTY
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Call of Duty VNG
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cd %windir%\khanh10a1\app
IF not EXIST CallOfDutyVNG.zip GOTO CALLOFDUTYNOTFOUND
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Call of Duty VNG
echo.
echo    Process: Uninstalling Call of Duty VNG.....
echo.
%windir%\khanh10a1\framework\adb.exe shell pm uninstall com.vng.codmvn
%windir%\khanh10a1\framework\adb.exe shell rm -r /sdcard/Android/obb/com.vng.codmvn
%windir%\khanh10a1\framework\adb.exe shell rm -r /sdcard/Android/data/com.vng.codmvn
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Call of Duty VNG
echo.
echo    Process: Extracting CallOfDutyVNG.zip.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\execute.exe x %windir%\khanh10a1\app\CallOfDutyVNG.zip -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Call of Duty VNG
echo.
echo    Process: Installing OBB file.....
echo.
%windir%\khanh10a1\framework\adb.exe push %windir%\khanh10a1\framework\Android\obb\com.vng.codmvn /sdcard/Android/obb/com.vng.codmvn
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Call of Duty VNG
echo.
echo    Process: Installing APK file.....
echo.
cd %windir%\khanh10a1\framework
IF not EXIST CallOfDutyVNG.apk GOTO CALLOFDUTYNOTFOUNDAPK
%windir%\khanh10a1\framework\adb.exe install "%windir%\khanh10a1\framework\CallOfDutyVNG.apk"
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:CALLOFDUTYNOTFOUNDAPK
cls
echo CONSOLE_MODE: YES
echo.
echo   ERROR: Khong tim thay File APK
echo   Hay chac chan ban da doi ten file chinh xac, hoac da tat diet virus
echo.
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\khanh11a1_CODNFAPK.vbs
pause
GOTO START

:AVATARMUSIKNOTFOUND
cls
echo CONSOLE_MODE: YES
echo.
echo   ERROR: Khong tim thay File ZIP
echo   Hay chac chan ban da doi ten file chinh xac, hoac da tat diet virus
echo.
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\khanh11a1_AMNF.vbs
pause
GOTO START


:AVATARMUSIKNOTFOUNDAPK
cls
echo CONSOLE_MODE: YES
echo.
echo   ERROR: Khong tim thay File APK
echo   Hay chac chan ban da doi ten file chinh xac, hoac da tat diet virus
echo.
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\khanh11a1_AMNFAPK.vbs
pause
GOTO START


:STARTAVATARMUSIK
cls
echo CONSOLE_MODE: YES
echo.
echo            Vui long doc file Readme.txt neu ban chua biet!
echo.
%windir%\explorer.exe "%windir%\khanh10a1\app"
pause
GOTO AVATARMUSIK

:AVATARMUSIK
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Avatar Musik
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cd %windir%\khanh10a1\app
IF not EXIST AvatarMusik.zip GOTO AVATARMUSIKNOTFOUND
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Avatar Musik
echo.
echo    Process: Uninstalling Avatar Musik.....
echo.
%windir%\khanh10a1\framework\adb.exe shell pm uninstall com.TeaM.AvatarMusik
%windir%\khanh10a1\framework\adb.exe shell rm -r /sdcard/Android/obb/com.TeaM.AvatarMusik
%windir%\khanh10a1\framework\adb.exe shell rm -r /sdcard/Android/data/com.TeaM.AvatarMusik
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Avatar Musik
echo.
echo    Process: Extracting AvatarMusik.zip.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\execute.exe x %windir%\khanh10a1\app\AvatarMusik.zip -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Avatar Musik
echo.
echo    Process: Installing OBB file.....
echo.
%windir%\khanh10a1\framework\adb.exe push %windir%\khanh10a1\framework\Android\obb\com.TeaM.AvatarMusik /sdcard/Android/obb/com.TeaM.AvatarMusik
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Avatar Musik
echo.
echo    Process: Installing APK file.....
echo.
cd %windir%\khanh10a1\framework
IF not EXIST AvatarMusik.apk GOTO AVATARMUSIKNOTFOUNDAPK
%windir%\khanh10a1\framework\adb.exe install "%windir%\khanh10a1\framework\AvatarMusik.apk"
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:STARTFREEFIREMAX
cls
echo CONSOLE_MODE: YES
echo.
echo            Vui long doc file Readme.txt neu ban chua biet!
echo.
%windir%\explorer.exe "%windir%\khanh10a1\app"
pause
GOTO FREEFIREMAX

:FREEFIREMAXNOTFOUND
cls
echo CONSOLE_MODE: YES
echo.
echo   ERROR: Khong tim thay File ZIP
echo   Hay chac chan ban da doi ten file chinh xac, hoac da tat diet virus
echo.
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\khanh11a1_FFMNF.vbs
pause
GOTO START

:FREEFIREMAXNOTFOUNDAPK
cls
echo CONSOLE_MODE: YES
echo.
echo   ERROR: Khong tim thay File APK
echo   Hay chac chan ban da doi ten file chinh xac, hoac da tat diet virus
echo.
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\khanh11a1_FFMNFAPK.vbs
pause
GOTO START

:FREEFIREMAX
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Free Fire MAX
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cd %windir%\khanh10a1\app
IF not EXIST FreeFireMAX.zip GOTO FREEFIREMAXNOTFOUND
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Free Fire MAX
echo.
echo    Process: Uninstalling Free Fire MAX.....
echo.
%windir%\khanh10a1\framework\adb.exe shell pm uninstall com.dts.freefiremax
%windir%\khanh10a1\framework\adb.exe shell rm -r /sdcard/Android/obb/com.dts.freefiremax
%windir%\khanh10a1\framework\adb.exe shell rm -r /sdcard/Android/data/com.dts.freefiremax
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Free Fire MAX
echo.
echo    Process: Extracting FreeFireMAX.zip.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\execute.exe x %windir%\khanh10a1\app\FreeFireMAX.zip -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Free Fire MAX
echo.
echo    Process: Installing OBB file.....
echo.
%windir%\khanh10a1\framework\adb.exe push %windir%\khanh10a1\framework\Android\obb\com.dts.freefiremax /sdcard/Android/obb/com.dts.freefiremax
cls
echo CONSOLE_MODE: YES
echo                     Dang Cai Dat Free Fire MAX
echo.
echo    Process: Installing APK file.....
echo.
cd %windir%\khanh10a1\framework
IF not EXIST FreeFireMAX.apk GOTO FREEFIREMAXNOTFOUNDAPK
%windir%\khanh10a1\framework\adb.exe install "%windir%\khanh10a1\framework\FreeFireMAX.apk"
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo    Process: Completed!!!!
echo.
pause
GOTO EXIT

:LIENQUANNOTFOUND
cls
echo CONSOLE_MODE: YES
echo.
echo   ERROR: Khong tim thay File ZIP
echo   Hay chac chan ban da doi ten file chinh xac, hoac da tat diet virus
echo.
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\khanh11a1_LQNF.vbs
pause
GOTO START

:LIENQUANNOTFOUNDAPK
cls
echo CONSOLE_MODE: YES
echo.
echo   ERROR: Khong tim thay File APK
echo   Hay chac chan ban da doi ten file chinh xac, hoac da tat diet virus
echo.
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\khanh11a1_LQNFAPK.vbs
pause
GOTO START

:STARTLIENQUAN
cls
echo CONSOLE_MODE: YES
echo.
echo            Vui long doc file Readme.txt neu ban chua biet!
echo. 
%windir%\explorer.exe "%windir%\khanh10a1\app"
pause
GOTO LIENQUAN

:LIENQUAN
cls
echo CONSOLE_MODE: YES
echo                        Dang Cai Dat Lien Quan Mobile
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cd %windir%\khanh10a1\app
IF not EXIST LienQuanMobile.zip GOTO LIENQUANNOTFOUND
cls
echo CONSOLE_MODE: YES
echo                        Dang Cai Dat Lien Quan Mobile
echo.
echo    Process: Uninstalling Lien Quan Mobile.....
echo.
%windir%\khanh10a1\framework\adb.exe shell pm uninstall com.garena.game.kgvn
%windir%\khanh10a1\framework\adb.exe shell rm -r /sdcard/Android/obb/com.garena.game.kgvn
cls
echo CONSOLE_MODE: YES
echo                        Dang Cai Dat Lien Quan Mobile
echo.
echo    Process: Extracting LienQuanMobile.zip.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\execute.exe x %windir%\khanh10a1\app\LienQuanMobile.zip -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                        Dang Cai Dat Lien Quan Mobile
echo.
echo    Process: Installing OBB file.....
echo.
%windir%\khanh10a1\framework\adb.exe push %windir%\khanh10a1\framework\Android\obb\com.garena.game.kgvn /sdcard/Android/obb/com.garena.game.kgvn
cls
echo CONSOLE_MODE: YES
echo                        Dang Cai Dat Lien Quan Mobile
echo.
echo    Process: Installing APK file.....
echo.
cd %windir%\khanh10a1\framework
IF not EXIST LienQuanMobile.apk GOTO LIENQUANNOTFOUNDAPK
%windir%\khanh10a1\framework\adb.exe install "%windir%\khanh10a1\framework\LienQuanMobile.apk"
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo    Process: Completed!!!!!!
echo.
pause
GOTO EXIT

:FREEFIRENOTFOUND
cls
echo CONSOLE_MODE: YES
echo.
echo   ERROR: Khong tim thay File ZIP
echo   Hay chac chan ban da doi ten file chinh xac, hoac da tat diet virus
echo.
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\khanh11a1_FFNF.vbs
pause
GOTO START

:FREEFIRENOTFOUNDAPK
cls
echo CONSOLE_MODE: YES
echo.
echo   ERROR: Khong tim thay File APK
echo   Hay chac chan ban da doi ten file chinh xac, hoac da tat diet virus
echo.
%windir%\khanh10a1\framework\khanhvuinguyenvan\vi\khanh11a1_FFNFAPK.vbs
pause
GOTO START

:STARTFREEFIRE
cls
echo CONSOLE_MODE: YES
echo.
echo            Vui long doc file Readme.txt neu ban chua biet!
echo.
%windir%\explorer.exe "%windir%\khanh10a1\app"
pause
GOTO FREEFIRE

:FREEFIRE
cls
echo CONSOLE_MODE: YES
echo                        Dang Cai Dat Free Fire
echo.
echo    Process: Starting ADB.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\adb.exe kill-server
%windir%\khanh10a1\framework\adb.exe devices
cd %windir%\khanh10a1\app
IF not EXIST FreeFire.zip GOTO FREEFIRENOTFOUND
cls
echo CONSOLE_MODE: YES
echo                        Dang Cai Dat Free Fire
echo.
echo    Process: Uninstalling Free Fire.....
echo.
%windir%\khanh10a1\framework\adb.exe shell pm uninstall com.dts.freefireth
%windir%\khanh10a1\framework\adb.exe shell rm -r /sdcard/Android/obb/com.dts.freefireth
cls
echo CONSOLE_MODE: YES
echo                        Dang Cai Dat Free Fire
echo.
echo    Process: Extracting FreeFire.zip.....
echo.
cd %windir%\khanh10a1\framework
%windir%\khanh10a1\framework\execute.exe x %windir%\khanh10a1\app\FreeFire.zip -pUC1Npa_Mu85Qo1Rut5K1Rh7g -aoa -y
cls
echo CONSOLE_MODE: YES
echo                        Dang Cai Dat Free Fire
echo.
echo    Process: Installing OBB file.....
echo.
%windir%\khanh10a1\framework\adb.exe push %windir%\khanh10a1\framework\Android\obb\com.dts.freefireth /sdcard/Android/obb/com.dts.freefireth
cls
echo CONSOLE_MODE: YES
echo                        Dang Cai Dat Free Fire 
echo.
echo    Process: Installing APK file.....
echo.
cd %windir%\khanh10a1\framework
IF not EXIST FreeFire.apk GOTO FREEFIRENOTFOUNDAPK
%windir%\khanh10a1\framework\adb.exe install "%windir%\khanh10a1\framework\FreeFire.apk"
%windir%\khanh10a1\framework\adb.exe kill-server
cls
echo CONSOLE_MODE: YES
echo    Process: Completed!!!!!!
echo.
pause
GOTO EXIT

:EXIT
cls
echo CONSOLE_MODE: YES
rmdir /q /s "%windir%\khanh10a1\framework"
exit