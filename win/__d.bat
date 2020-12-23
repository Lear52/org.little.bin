@echo off
call _spath.bat 
rem %LPROXY_PATH%\win64\wrapper.exe -r %LPROXY_PATH%\win64\wrapper_%1.conf  set.default.LPROXY_HOME=%LPROXY_HOME%
cd var\%1
%LPROXY_PATH%\win64\wrapper.exe -i %LPROXY_PATH%\var\%1\wrapper.conf  set.default.LPROXY_HOME=%LPROXY_HOME% set.default.LPROXY_SUFIX=%1 set.default.LPROXY_JMXPORT=%2
cd ..\..
