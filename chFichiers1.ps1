<#------------------------------------------------------------------
Apprentissage PowerShell - Script n° 1
Fonction : Ce script cherche un fichier dans un dossier donné
--------------------------------------------------------------------#>
$cherche = $args[0]
$dossier = $args[1]
echo "Recherche du fichier $cherche dans le dossier $dossier"
Get-ChildItem -Path $dossier -Recurse -ErrorAction silentlycontinue |
? {$_.Name -eq $cherche} | forEach-Object {
    echo ("le fichier $cherche est dans "+$_.DirectoryName)
    $nombre++
}
echo "Le fichier $cherche est présent dans $nombre dossiers"







