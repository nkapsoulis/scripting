@ECHO OFF
type file.txt
for /F "tokens=3 delims= " %%i in ('"jdeps Simple.jar|Findstr Simple.jar"') do @echo %%i
								rem print the 3rd column of the output of the command in '"..."'
PAUSE