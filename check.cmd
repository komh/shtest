@echo off
setlocal

set SH=%1
if "%SH%" == "" if exist ..\sh.exe set SH=..\sh.exe
if "%SH%" == "" if exist ..\mksh.exe set SH=..\mksh.exe
if "%SH%" == "" set SH=sh

echo Check with %SH%
%SH% check.sh

endlocal
