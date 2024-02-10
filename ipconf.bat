@echo off
echo %computername% 
echo %computername% >> ipconf.txt
ipconfig
ipconfig >> ipconf.txt
echo -------------------- >> ipconf.txt
pause