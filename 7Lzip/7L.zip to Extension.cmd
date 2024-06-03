cd /
:top
mode 100,7
title "7L.zip"
@echo off
color 04

set "DIR1=OneDrive"
set "DIR2=%UserProfile%\%DIR1%\Documents\7Lzip
MD %DIR2%\Compressed\
MD %DIR2%\Unzip\
cls
cecho {03}Choose {04}1=zip {07}or {06}2=unzip{07}

set /p a=:
if %a%==1 goto zip
if %a%==2 goto unzip
goto top

:zip
cecho {03}Choose .zip file{07}
set /p m=:
cecho {03}Choose file Name.Extension{07}
set /p n=:
cecho {06}Please Be Patient...{07}%time%{\n}
copy %m% %DIR2%\Compressed\%n%
goto 7L

:unzip
cecho {03}Choose compressed custom file{07}
set /p m=:
cecho {03}Choose file Name{07}
set /p n=:
cecho {06}Please Be Patient...{07}%time%{\n}
copy %m% %DIR2%\Unzip\%n%.zip
goto 7L

:7L
cecho {03}made by {06}Kia7L
timeout /t 3 > nul
exit