> [!TIP]  
> Les appels suivants peuvent également être lancés depuis la barre d'adresse de l'explorateur de fichiers

|Commande|Outil|
|:-:|-|
|`sysdm.cpl`|Propriétés système|
|`dccw`|Etalonner l'ecran|
|`fsquirt`|Partage bluetooth|
|`ncpa.cpl`|Connexions réseau|
|`mrt`|Outil de suppression de logiciels malveillants|
|`cleanmgr`|[Nettoyage de disque](https://ss64.com/nt/cleanmgr.html)|
|`perfmon /rel`|Historique de fiabilité|
|`powershell_ise`|Powershell ISE|
|`rundll32.exe sysdm.cpl,EditEnvironmentVariables`|Variables d'environnement|
|`psr /start /output %USERPROFILE%\Desktop\procedure.zip /maxsc 50 /exitonsave 1`|Demarrer l'[enregistreur d'actions](https://formations.surinfo.fr/divers/problem-step-recorder.html)[^1]|
[^1]: 50 captures d'écran max, fichier de sortie dans le bureau de l'utilisateur courant

Source : [ss64](https://ss64.com/nt/run.html)

|Appel|Emplacement|
|:-:|-|
|`%ALLUSERSPROFILE%` ou `%ProgramData%`|C:\ProgramData|
|`%APPDATA%`|C:\Users\\{utilisateur}\AppData\Roaming|
|`%CommonProgramFiles%` ou `%CommonProgramW6432%`|C:\Program Files\Common Files|
|`%CommonProgramFiles(x86)%`|C:\Program Files (x86)\Common Files|
|`%HOMEDRIVE%` ou `%SystemDrive%`|C:\|
|`%HOMEPATH%` ou `%USERPROFILE%`|C :\Users\\{utilisateur}|
|`%LOCALAPPDATA%`|C:\Users\\{utilisateur}\AppData\Local|
|`%OneDrive%`|Le répertoire de synchronisation OneDrive|
|`%ProgramFiles%` ou `%ProgramW6432%`|C:\Program Files|
|`%ProgramFiles(x86)%`|C:\Program Files (x86)|
|`%PSModulePath%`|C:\system32\WindowsPowerShell\v1.0\Modules\|
|`%PUBLIC%`|C:\Users\Public|
|`%SystemRoot%` ou `%WINDIR%`|C:\Windows|
|`%TMP%` ou `%TEMP%`|C:\Users\\{utilisateur}\AppData\Local\Temp|

Source : [Le coin du net](https://www.lecoindunet.com/variables-environnement-windows)

<!--
|``||
-->
