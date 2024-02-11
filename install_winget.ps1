# installe le gestionnaire de paquets Windows (winget)

# Vérifie si winget est déjà installé
if (Get-Command winget -ErrorAction SilentlyContinue) {
    Write-Output "Winget est déjà installé sur ce poste."
} else {
    # Si winget n'est pas installé, l'installe
    # Télécharge l'installateur de l'App Installer à partir du dépôt GitHub de Microsoft
    Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/download/v1.6.3482/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle" -OutFile "Microsoft.DesktopAppInstaller.appxbundle"

    # Installe l'App Installer
    Add-AppxPackage -Path .\Microsoft.DesktopAppInstaller.appxbundle

    # Supprime le fichier d'installation téléchargé
    Remove-Item -Path .\Microsoft.DesktopAppInstaller.appxbundle

    Write-Output "Winget a été installé avec succès."
}
