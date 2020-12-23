@echo off
call _spath.bat 
echo %LPROXY_PATH%
rem call __st.bat 0
set  _CMD_=st
call __%_CMD_%.bat ppp  17770

