@echo off
call _spath.bat 
echo %LPROXY_PATH%
set  _CMD_=re
call __%_CMD_%.bat ppp  17770

