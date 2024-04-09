[Désactiver l'expiration du mot de passe du compte courant](#desactiver-lexpiration-du-mot-de-passe-du-compte-courant)
[Désactiver veille prolongée](#desactiver-veille-prolongée)
[Remettre tout les bits non référencés par la table MFT à 0](#remettre-tout-les-bits-non-référencés-par-la-table-mft-à-0)
[Lister pilotes](#lister-pilotes)
[Changer paramètres ip](#changer-paramètres-ip)
[Lister / supprimer / mettre à jour un paquet intallé](#lister-/-supprimer-/-mettre-à-jour-un-paquet-intallé)
[Récupérer clé Windows](#recuperer-clé-windows)
[Lister recursivement le contenu d'un répertoire](#lister-recursivement-le-contenu-dun-répertoire)
[Rennomer tous les fichiers d'un répertoire](#rennomer-tous-les-fichiers-dun-répertoire)
[Supprimer recursivement les fichiers avec une certaine extension d'un répertoire](#supprimer-recursivement-les-fichiers-avec-une-certaine-extension-dun-répertoire)
[Lister les 100 derniers fichiers accédés](#lister-les-100-derniers-fichiers-accédés)
[Lister les 100 derniers fichiers écrits](#lister-les-100-derniers-fichiers-écrits)

**les chaines de caractères précédées d'un $ sont à adapter en fonction de l'environnement du système.**
[raccourcis clavier](https://ss64.com/nt/syntax-keyboard.html)

# [cmd](https://ss64.com/nt/)
### Desactiver l'expiration du mot de passe du compte courant
```batch
net accounts /maxpwage:unlimited
```
### Desactiver veille prolongée (supprime le fichier de stockage de RAM sur le disque)
```batch
powercfg -h off
```
### remettre tout les bits non référencés par la table MFT à 0 (par exemple sur le lecteur c:), nécessite [sdelete](https://learn.microsoft.com/fr-fr/sysinternals/downloads/sdelete)
```batch
sdelete -z c:
```
### Lister pilotes
```batch
driverquery -v
```
### Changer paramètres ip
```batch
route print -4
netsh interface ip set addresss "$nominterface" static $ip $masque $passerelle
```
### Lister / supprimer / mettre à jour un paquet intallé, nécessite [winget](https://github.com/microsoft/winget-cli/releases)
```batch
winget list
winget remove
winget upgrade
```
### Recuperer clé Windows
```batch
systeminfo | findstr ModŠle >> cle.txt & wmic path softwarelicensingservice get oa3xoriginalproductkey >> cle.txt
```

# [powershell](https://ss64.com/ps/)
### Lister recursivement le contenu d'un répertoire
```powershell
Get-ChildItem -Path 'C:\YourFolderPath' -Recurse -File | ForEach-Object { $_.BaseName } | Out-File -FilePath '.\liste.txt'
```
### Rennomer tous les fichiers d'un répertoire
```powershell
dir | Rename-Item -NewName { $_.Name -replace '$ancienne_chaine','$nouvelle_chaine' }
```

### Supprimer recursivement les fichiers avec une certaine extension d'un répertoire
```powershell
Get-ChildItem -Path "chemin_du_rÃ©pertoire" -Filter *.$* -Recurse | Remove-Item
```

### Lister les 100 derniers fichiers accédés (gci alias pour [Get-ChildItem](https://blog.netwrix.com/2023/06/21/get-childitem-cmdlet-in-powershell/))
```powershell
(gci C:\ -r | sort -Descending LastAccessTime | select -first 100) | Select-Object -Property LastAccessTime,FullName
```

### Lister les 100 derniers fichiers écrits
```powershell
(gci C:\ -r | sort -Descending LastWriteTime | select -first 100) | Select-Object -Property LastWriteTime,FullName
```
