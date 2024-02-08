@echo off
echo "entre le nouveau nom du poste"
set newname=
set /p newname=
echo "nouveau nom : %newname%"
set name=%computername%
echo "nom actuel : %name%"


exec "WMIC computersystem where caption='%name%' rename %newname%"


echo "il faut redemarrer le poste"
pause
