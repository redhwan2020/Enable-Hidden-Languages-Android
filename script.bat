:Redhwan
@echo off
color e
cd "%~dp0"
mode con:cols=83 lines=45
set /A count=4
cls
set PATH=%SystemRoot%\system32;%PATH%
SET log_dir=%d%_%t%
echo.
echo ******** ---------------------------------------------------------------- ********
echo ****** -----------------------------   2019   ----------------------------- ******
echo ***** --------------     Enable-Hidden-Languages-Android     --------------- *****
echo **** ----------------         BY Redhwan Kathir              ---------------- ****
echo * ------------------------------------------------------------------------------ *
echo.
echo.
echo [*] Waiting For Your Phone ...
adb kill-server >NUL 2>&1
adb wait-for-device >NUL 2>&1
echo.
adb install morelocal.apk >NUL 2>&1
adb shell "pm grant "com.sightidea.locale android.permission.CHANGE_CONFIGURATION"" >NUL 2>&1
echo [*] Please Wait Add Language to Your Phone ...
adb shell am start -n com.sightidea.locale.adbchangelanguage/.AdbChangeLanguage -e language ar >NUL 2>&1
echo.
echo --- All Finished ---
echo.
:exit


