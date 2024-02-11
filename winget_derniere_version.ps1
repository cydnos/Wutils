# installe le gestionnaire de paquets Windows (winget)

# Vérifie si winget est déjà installé
if (Get-Command winget -ErrorAction SilentlyContinue) {
    Write-Output "Winget est déjà installé sur ce poste."
} else {
    # Si winget n'est pas installé, l'installe

    # liste le contenu de la page des releases de winget sur GitHub
    $pageContent = Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/"

    # expression régulière pour trouver l'URL de la dernière version de l'installateur
    $urlPattern = '/microsoft/winget-cli/releases/download/.*/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle'
    $latestUrl = $pageContent.Links | Where-Object { $_.href -match $urlPattern } | Select-Object -First 1

    # Télécharge l'installateur de l'App Installer à partir de l'URL trouvée
    Invoke-WebRequest -Uri ("https://github.com" + $latestUrl.href) -OutFile "Microsoft.DesktopAppInstaller.appxbundle"

    # Installe l'App Installer
    Add-AppxPackage -Path .\Microsoft.DesktopAppInstaller.appxbundle

    # Supprime le fichier d'installation téléchargé
    Remove-Item -Path .\Microsoft.DesktopAppInstaller.appxbundle

    Write-Output "Winget a été installé avec succès."
}
