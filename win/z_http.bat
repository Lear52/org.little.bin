@echo off

set LIST=.
setlocal EnableDelayedExpansion
for  %%B IN ( LIB/* ) do set LIST=!LIST!;LIB\%%B
rem for  %%B IN ( LIBMQ2/* ) do set LIST=!LIST!;LIBMQ2\%%B
set CP=%LIST%
rem et DEF=-Duser.region=US  -Dlog4j.configuration=log4j.xml -Dencoding=Cp866 -Dfile.encoding=Cp866 -Dssl=true 
set DEF=-Duser.region=US  -Dlog4j.configuration=log4j.xml -Dencoding=Cp866 -Dfile.encoding=UTF8 -Djavax.net.debug=handshake
rem -Djavax.net.debug=All
rem -Djavax.net.debug=all
rem set DEF2=-Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=19990 -Dcom.sun.management.jmxremote.ssl=false  -Dcom.sun.management.jmxremote.authenticate=false 
rem -Djava.net.preferIPv4Stack=true "
echo -------------------------------------------
echo %CP% 
echo -------------------------------------------
echo %DEF% %DEF2%
echo -------------------------------------------
rem java -cp %CP%  %TR% %DEF% %DEF2% org.little.http.runWrapper -cfg littleproxy_h.xml 2> logs/debug2.txt > logs/debug1.txt
start java\bin\java -cp %CP%  %TR% %DEF% %DEF2% org.little.http.runWrapper -cfg littleproxy_h.xml 
