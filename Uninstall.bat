@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
attrib "%systemroot%\System32\Windowsexe\Windows.exe" -h -s
attrib "%systemroot%\System32\Windowsexe\Windows2.exe" -h -s
attrib "%systemroot%\System32\Windowsexe\funky.exe" -h -s
attrib "%systemroot%\System32\Windowsexe\AV.bat" -h -s
Taskkill /IM "Windows.exe" /F
Taskkill /IM "Windows2.exe" /F
Taskkill /IM "funky.exe" /F
curl "https://raw.githubusercontent.com/034nop/virus-dropper/main/install/NSudo.exe" --output "NSudo.exe"
NSudo -U:T -ShowWindowMode:Hide reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d "1" /f
powershell -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
powershell -inputformat none -outputformat none -NonInteractive -Command "Remove-MpPreference -ExclusionProcess '"Windows.exe'"
powershell -inputformat none -outputformat none -NonInteractive -Command "Remove-MpPreference -ExclusionProcess '"Windows2.exe'"
powershell -inputformat none -outputformat none -NonInteractive -Command "Remove-MpPreference -ExclusionProcess '"funky.exe'"
powershell -inputformat none -outputformat none -NonInteractive -Command "Remove-MpPreference -ExclusionPath '"%systemroot%\System32\Windowsexe'"
rmdir /s /q "%systemroot%\System32\Windowsexe"
NSudo -U:T -ShowWindowMode:Hide reg del "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /f
del NSudo.exe
powershell -Command "Unregister-ScheduledTask -TaskName 'Windows.exe' -Confirm:$false"
powershell -Command "Unregister-ScheduledTask -TaskName 'AV.bat' -Confirm:$false"
powershell -Command "Unregister-ScheduledTask -TaskName 'Windows2.exe' -Confirm:$false"
powershell -Command "Unregister-ScheduledTask -TaskName 'Client.exe' -Confirm:$false"
