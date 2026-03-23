@echo off

set "UE_ANDROID_CFG=%LOCALAPPDATA%\Unreal Engine\Engine\Config\UserEngine.ini"

echo Updating Android SDK settings...

(
echo [/Script/AndroidPlatformEditor.AndroidSDKSettings]
echo SDKPath^=(Path^="C:/Users/bumag/AppData/Local/Android/Sdk"^)
echo NDKPath^=(Path^="C:/Users/bumag/AppData/Local/Android/Sdk/ndk/27.2.12479018"^)
echo JavaPath^=(Path^="C:/Program Files/Android/Android Studio/jbr"^)
echo SDKAPILevel=latest
echo NDKAPILevel=android-27
) > "%UE_ANDROID_CFG%"

echo.
echo === File contents after write ===
type "%UE_ANDROID_CFG%"

echo Done.
pause