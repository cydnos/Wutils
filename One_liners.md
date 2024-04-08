**les chaines de caractères précédées d'un $ sont à adapter en fonction de l'environnement du système.**
[raccourcis clavier](https://ss64.com/nt/syntax-keyboard.html)

# [cmd](https://ss64.com/nt/)
> Desactiver l'expiration du mot de passe du compte courant
```batch
net accounts /maxpwage:unlimited
```
> Desactiver veille prolongée (supprime le fichier de stockage de RAM sur le disque)
```batch
powercfg -h off
```
> remettre tout les bits non référencés par la table MFT à 0 (par exemple sur le lecteur c:), nécessite [sdelete](https://learn.microsoft.com/fr-fr/sysinternals/downloads/sdelete)
```batch
sdelete -z c:
```
> Lister pilotes
```batch
driverquery -v
```
> Changer paramètres ip
```batch
route print -4
netsh interface ip set addresss "$nominterface" static $ip $masque $passerelle
```
> Lister / supprimer / mettre à jour un paquet intallé, nécessite [winget](https://github.com/microsoft/winget-cli/releases)
```batch
winget list
winget remove
winget upgrade
```
> Recuperer clé Windows
```batch
systeminfo | findstr ModŠle >> cle.txt & wmic path softwarelicensingservice get oa3xoriginalproductkey >> cle.txt
```

# [powershell](https://ss64.com/ps/)
> Lister recursivement le contenu d'un répertoire
```powershell
Get-ChildItem -Path 'C:\YourFolderPath' -Recurse -File | ForEach-Object { $_.BaseName } | Out-File -FilePath '.\liste.txt'
```
> Rennomer tous les fichiers d'un répertoire
```powershell
dir | Rename-Item -NewName { $_.Name -replace '$ancienne_chaine','$nouvelle_chaine' }
```

> Supprimer recursivement les fichiers avec une certaine extension d'un répertoire
```powershell
Get-ChildItem -Path "chemin_du_rÃ©pertoire" -Filter *.$* -Recurse | Remove-Item
```

> Lister les 100 derniers fichiers accédés (gci alias pour [Get-ChildItem](https://ss64.com/ps/get-childitem.html))
```powershell
(gci C:\ -r | sort -Descending LastAccessTime | select -first 100) | Select-Object -Property LastAccessTime,FullName
```

> Lister les 100 derniers fichiers écrits
```powershell
(gci C:\ -r | sort -Descending LastWriteTime | select -first 100) | Select-Object -Property LastWriteTime,FullName
```
