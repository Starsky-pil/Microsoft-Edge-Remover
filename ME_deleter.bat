@echo off
Title Microsoft Edge deleter by Starsky version 1.0
cls
color 0A


net session >nul 2>&1 || (echo You need to run it as an admin & pause>nul & exit)


set x86_path="C:\Program Files (x86)\Microsoft"
set x64_path="C:\Program Files\Microsoft"


taskkill /F /IM "msedge.exe" /T >nul 2>&1



if exist %x86_path% (
	cls
	takeown /F %x86_path%
	rmdir /S /Q %x86_path% && echo Microsoft Edge x86 successfully removed || echo Unable to delete %x86_path%
	if exist %x64_path% (goto:x64) else (echo End of file && echo press any key to close...)
	pause>nul
	EXIT
)



:x64
if exist %x64_path% (
	cls
	takeown /F %x64_path%
	rmdir /S /Q %x64_path% && echo Microsoft Edge x64 successfully removed || echo Unable to delete %x84_path%
	echo End of file && echo Press any key to close... && pause>nul && EXIT
)



echo No Microsoft Edge has been found, if their is any issue please submit at https://github.com/Starsky-pil/
echo>nul
echo Press any key to quit...
pause>nul
