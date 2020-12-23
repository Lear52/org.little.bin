@echo off
call _spath.bat 
cd var\%1
%LPROXY_PATH%\win64\wrapper.exe -i %LPROXY_PATH%\var\%1\wrapper.conf  set.default.LPROXY_HOME=%LPROXY_HOME% set.default.LPROXY_SUFIX=%1 set.default.LPROXY_JMXPORT=%2
cd ..\..
