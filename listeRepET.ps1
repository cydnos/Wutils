# Pour chaque fichier dans le répertoire courant
Get-ChildItem -File | ForEach-Object {
    # Calcule la taille du fichier en Mo, arrondie à deux décimales
    $sizeInMB = [math]::Round($_.Length / 1MB, 2)
    # Crée un nouvel objet PowerShell avec les propriétés suivantes :
    New-Object PSObject -Property @{
        # Nom du fichier sans extension ($_ est une variable qui fait référence à l’objet actuel dans le pipeline (dans ce cas, chaque fichier).)
        Name = $_.BaseName
        # Taille du fichier en Mo
        SizeMB = $sizeInMB
        # Date de la dernière modification du fichier
        LastWriteTime = $_.LastWriteTime
    }
# Trie les objets par nom et redirige la sortie vers le fichier 'logiciels.txt'
} | Sort-Object Name > logiciels.txt
