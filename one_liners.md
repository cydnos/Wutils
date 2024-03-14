**les chaines de caractères précédées d'un $ sont à adapter en fonction de l'environnement du système.**

# cmd

> Desactiver veille prolongée (supprime le fichier de stockage de RAM sur le disque)
```
powercfg -h off
```
> remettre tout les bits non référencés par la table MFT à 0 (par exemple sur le lecteur c:), nécessite [sdelete](https://learn.microsoft.com/fr-fr/sysinternals/downloads/sdelete)
```
sdelete -z c:
```
> Lister pilotes
```
driverquery -v
```
> Changer paramètres ip
```
route print -4
netsh interface ip set addresss "$nominterface" static $ip $masque $passerelle
```
> Lister / supprimer / mettre à jour un paquet intallé, nécessite [winget](https://github.com/microsoft/winget-cli/releases)
```
winget list
winget remove
winget upgrade
```

# powershell
