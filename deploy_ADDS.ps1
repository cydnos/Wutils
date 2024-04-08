# Script Windows PowerShell pour le déploiement d’AD DS

# Importe le module ADDSDeployment qui contient les cmdlets pour déployer Active Directory
Import-Module ADDSDeployment

# Installe une nouvelle forêt Active Directory
Install-ADDSForest `
    # Ne crée pas de délégation DNS lors de la création de la zone DNS
    -CreateDnsDelegation:$false `
    # Spécifie le chemin d'accès au répertoire où le fichier de base de données Active Directory sera créé
    -DatabasePath "C:\Windows\NTDS" `
    # Définit le mode de fonctionnement du domaine pour la nouvelle forêt
    -DomainMode "WinThreshold" `
    # Spécifie le nom DNS pleinement qualifié (FQDN) du domaine racine de la nouvelle forêt
    -DomainName "M2l.net" `
    # Spécifie le nom NetBIOS du domaine racine de la nouvelle forêt
    -DomainNetbiosName "M2L" `
    # Définit le mode de fonctionnement de la forêt pour la nouvelle forêt
    -ForestMode "WinThreshold" `
    # Installe et configure le service DNS sur cet ordinateur
    -InstallDns:$true `
    # Spécifie le chemin d'accès au répertoire où le fichier journal Active Directory sera créé
    -LogPath "C:\Windows\NTDS" `
    # Ne redémarre pas l'ordinateur après l'installation de la forêt Active Directory
    -NoRebootOnCompletion:$false `
    # Spécifie le chemin d'accès au répertoire SYSVOL
    -SysvolPath "C:\Windows\SYSVOL" `
    # Force l'exécution de la commande sans demander de confirmation à l'utilisateur
    -Force:$true
