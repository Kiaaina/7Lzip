cd /
:top
mode 30,5
title "VTOL"
@echo off 
color 04
cls    

set "folder=%UserProfile%\OneDrive\Documents\7Lzip

copy /y "%folder%\Insertbmp.exe" "C:\Windows\"
copy /y "%folder%\cecho.exe" "C:\Windows\"

goto 7L

:7L
cecho {06}Made_By_Kia7L{02}
timeout /t 4 > nul
exit