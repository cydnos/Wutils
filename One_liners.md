# Sommaire
1. [cmd](#cmd)
    - [Désactiver l'expiration du mot de passe du compte courant](#desactiver-lexpiration-du-mot-de-passe-du-compte-courant-)
    - [Désactiver veille prolongée](#desactiver-veille-prolong%C3%A9e-supprime-le-fichier-de-stockage-de-ram-sur-le-disque)
    - [Remettre tout les bits non référencés par la table MFT à 0](#remettre-tout-les-bits-non-r%C3%A9f%C3%A9renc%C3%A9s-par-la-table-mft-%C3%A0-0-par-exemple-sur-le-lecteur-c-n%C3%A9cessite-sdelete)
    - [Lister pilotes](#lister-pilotes)
    - [Changer paramètres ip](#changer-paramètres-ip)
    - [Lister / supprimer / mettre à jour un paquet intallé](#lister--supprimer--mettre-%C3%A0-jour-un-paquet-intall%C3%A9-n%C3%A9cessite-winget)
    - [Récupérer clé Windows](#recuperer-clé-windows)
2. [powershell](#powershell)
    - Lister le contenu du répertoire de l'utilisateur courant
    - [Lister recursivement le contenu d'un répertoire](#lister-recursivement-le-contenu-dun-répertoire)
    - [Rennomer tous les fichiers d'un répertoire](#rennomer-tous-les-fichiers-dun-répertoire)
    - [Supprimer recursivement les fichiers avec une certaine extension d'un répertoire](#supprimer-recursivement-les-fichiers-avec-une-certaine-extension-dun-répertoire)
    - [Lister les 100 derniers fichiers accédés](#lister-les-100-derniers-fichiers-acc%C3%A9d%C3%A9s-gci-alias-pour-get-childitem)
    - [Lister les 100 derniers fichiers écrits](#lister-les-100-derniers-fichiers-écrits)

**les chaines de caractères précédées d'un $ sont à adapter en fonction de l'environnement du système.**
[raccourcis clavier](https://ss64.com/nt/syntax-keyboard.html)

## [cmd](https://ss64.com/nt/)
### Desactiver l'expiration du mot de passe du compte courant [↰](#sommaire)
```batch
net accounts /maxpwage:unlimited
```
### Desactiver veille prolongée (supprime le fichier de stockage de RAM sur le disque) [↰](#sommaire)
```batch
powercfg -h off
```
### remettre tout les bits non référencés par la table MFT à 0 (par exemple sur le lecteur c:), nécessite [sdelete](https://learn.microsoft.com/fr-fr/sysinternals/downloads/sdelete) [↰](#sommaire)
```batch
sdelete -z c:
```
### Lister pilotes [↰](#sommaire)
```batch
driverquery -v
```
### Changer paramètres ip [↰](#sommaire)
```batch
route print -4
netsh interface ip set addresss "$nominterface" static $ip $masque $passerelle
```
### Lister / supprimer / mettre à jour un paquet intallé, nécessite [winget](https://github.com/microsoft/winget-cli/releases) [↰](#sommaire)
```batch
winget list
winget remove
winget upgrade
```
### Recuperer clé Windows [↰](#sommaire)
```batch
systeminfo | findstr ModŠle >> cle.txt & wmic path softwarelicensingservice get oa3xoriginalproductkey >> cle.txt
```

## [powershell](https://ss64.com/ps/)

### Lister le contenu du répertoire de l'utilisateur courant [↰](#sommaire)
```powershell
dir env:userprofile
```
### Lister recursivement le contenu d'un répertoire [↰](#sommaire)
```powershell
Get-ChildItem -Path 'C:\YourFolderPath' -Recurse -File | ForEach-Object { $_.BaseName } | Out-File -FilePath '.\liste.txt'
```
### Renommer tous les fichiers d'un répertoire [↰](#sommaire)
```powershell
dir | Rename-Item -NewName { $_.Name -replace '$ancienne_chaine','$nouvelle_chaine' }
```

### Supprimer recursivement les fichiers avec une certaine extension d'un répertoire [↰](#sommaire)
```powershell
Get-ChildItem -Path "chemin_du_rÃ©pertoire" -Filter *.$* -Recurse | Remove-Item
```

### Lister les 100 derniers fichiers accédés (gci alias pour [Get-ChildItem](https://blog.netwrix.com/2023/06/21/get-childitem-cmdlet-in-powershell/)) [↰](#sommaire)
```powershell
(gci C:\ -r | sort -Descending LastAccessTime | select -first 100) | Select-Object -Property LastAccessTime,FullName
```

### Lister les 100 derniers fichiers écrits [↰](#sommaire)
```powershell
(gci C:\ -r | sort -Descending LastWriteTime | select -first 100) | Select-Object -Property LastWriteTime,FullName
```
