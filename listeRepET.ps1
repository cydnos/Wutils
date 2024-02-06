# Pour chaque fichier dans le répertoire courant
Get-ChildItem -File | ForEach-Object {
# Calcule la taille du fichier en Mo, arrondie à deux décimales
    $sizeInMB = [math]::Round($_.Length / 1MB, 2)
# Obtient le nom du fichier sans son extension
    $nameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($_.Name)
# Crée un nouvel objet PowerShell avec les propriétés suivantes :
    New-Object PSObject -Property @{
# Nom du fichier sans extension
        Name = $nameWithoutExtension
# Taille du fichier en Mo
        SizeMB = $sizeInMB
# Date de la dernière modification du fichier
        LastWriteTime = $_.LastWriteTime
    }
# Trie les objets par nom et redirige la sortie vers le fichier 'logiciels.txt'
} | Sort-Object Name > logiciels.txt
