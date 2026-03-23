@echo off

set "UE_ANDROID_CFG=%LOCALAPPDATA%\Unreal Engine\Engine\Config\UserEngine.ini"

echo Updating Android SDK settings...

(
echo [/Script/AndroidPlatformEditor.AndroidSDKSettings]
echo SDKPath^=(Path^="C:/Users/bumag/AppData/Local/Android/Sdk"^)
echo NDKPath^=(Path^="C:/Users/bumag/AppData/Local/Android/Sdk/ndk/21.4.7075529"^)
echo JavaPath^=(Path^="C:/Program Files/Android/Android Studio4.0/jre"^)
echo SDKAPILevel=android-30
echo NDKAPILevel=android-21
) > "%UE_ANDROID_CFG%"

echo.
echo === File contents after write ===
type "%UE_ANDROID_CFG%"

echo Done.
pause