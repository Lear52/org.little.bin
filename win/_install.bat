@echo off
call _spath.bat 
echo %LPROXY_PATH%
set  _CMD_=i
call __%_CMD_%.bat ppp  17770


