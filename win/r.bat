@echo off
call _spath.bat 
echo %LPROXY_PATH%
set NODE=i0
rem start %LPROXY_PATH%\win64\wrapper.exe -c %LPROXY_PATH%\var\i0\wrapper_i0.conf set.default.LPROXY_HOME=%LPROXY_HOME%
cd var\%NODE%
start %LPROXY_PATH%\win64\wrapper.exe -c %LPROXY_PATH%\var\%NODE%\wrapper.conf  set.default.LPROXY_HOME=%LPROXY_HOME% set.default.LPROXY_SUFIX=%NODE% set.default.LPROXY_JMXPORT=6888
cd ..\..

