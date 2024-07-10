- [Historique de fiabilité](#historique-de-fiabilité)
- [Demarrer l'enregistreur d'actions](#demarrer-lenregistreur-dactions-50-captures-d%C3%A9cran-max-fichier-de-sortie-dans-le-bureau-de-lutilisateur-courant)
- [Nettoyage de disque](#nettoyage-de-disque)
- [Outil de suppression de logiciels malveillants](#outil-de-suppression-de-logiciels-malveillants)
- [Etalonner l'ecran](#etalonner-lecran)
- [Connexions réseau](#connexions-réseau)
- [Partage bluetooth](#partage-bluetooth)

> [!TIP]  
> Les appels suivants peuvent également être lancés depuis la barre d'adresse de l'explorateur de fichiers

### Powershell ISE
```
powershell_ise
```

### Historique de fiabilité
```
perfmon /rel
```

### Demarrer l'[enregistreur d'actions](https://formations.surinfo.fr/divers/problem-step-recorder.html) (50 captures d'écran max, fichier de sortie dans le bureau de l'utilisateur courant)
```
psr /start /output %USERPROFILE%\Desktop\procedure.zip /maxsc 50 /exitonsave 1
```

### [Nettoyage de disque](https://ss64.com/nt/cleanmgr.html)
```
cleanmgr
```

### Outil de suppression de logiciels malveillants
```
mrt
```
### Etalonner l'ecran
```
dccw
```

### Connexions réseau
```
ncpa.cpl
```

### Partage bluetooth
```
fsquirt
```

### Propriétés système
```
sysdm.cpl
```

[Autres](https://ss64.com/nt/run.html)

