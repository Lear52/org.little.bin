@echo off
call _spath.bat 
rem echo %LPROXY_PATH%
%LPROXY_PATH%\win64\wrapper.exe -p %LPROXY_PATH%\var\%1\wrapper.conf  set.default.LPROXY_HOME=%LPROXY_HOME% set.default.LPROXY_SUFIX=%1 set.default.LPROXY_JMXPORT=%2
