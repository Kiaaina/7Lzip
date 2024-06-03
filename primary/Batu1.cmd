cd /
:top

title "7L.zip"
@echo off
color 04

set "DIR1=%UserProfile%\OneDrive\Documents\7Lzip\"
set "DIR2=%UserProfile%\OneDrive\Documents\7Lzip\rated-r.bmp"

mode 86,20
insertbmp.exe /p:"%DIR2%" /x:0 /y:0 /z:150 & timeout /t 5 > nul

mode 86,20
insertbmp.exe /p:"%DIR1%7Lzip.bmp" /x:0 /y:0 /z:150 & timeout /t 1 > nul

mode 100,7
set "DIR2=%UserProfile%\%DIR1%\Documents\7Lzip
MD %DIR2%\Ziped\
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
copy %m% %DIR2%\Ziped\%n%
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
cecho {03}made by {06}Kia7L...{07}%time%{\n}
timeout /t 5 > nul
start %DIR1%\primary\del.cmd
exit