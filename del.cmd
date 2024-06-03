cd /
:top

title "7L.zip"
@echo off
color 04
set "DIR0=%UserProfile%\OneDrive\Documents\7Lzip\
set "DIR1=%UserProfile%\OneDrive\Documents\7Lzip\batu1.cmd"
set "DIR2=%UserProfile%\OneDrive\Documents\7Lzip\primary\batu.cmd"

del %DIR1% 
copy %DIR2% %DIR0%
exit