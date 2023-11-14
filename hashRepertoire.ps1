<#
Lister le contenu d'un dossier sous forme de tableau contenant le nom, la taille et le SHA1 des fichiers présents en evitant la troncature des champs :
Utilisation de fichiers et de dossiers | Microsoft Learn. https://learn.microsoft.com/fr-fr/powershell/scripting/samples/working-with-files-and-folders?view=powershell-7.3.
Navigation dans les répertoires et le fichiers. https://cod-box.net/programmation-pour-les-debutants/apprendre-powershell/article-apprendre-powershel-pour-les-debutante/powershell-navigation-dans-les-repertoires-et-le-fichiers/.
Manipulation d'éléments de manière directe. https://learn.microsoft.com/fr-fr/powershell/scripting/samples/manipulating-items-directly?view=powershell-7.3.
#>

# lister le contenu du chemin spécifié
Get-ChildItem -Path "chemin_du_dossier" |
# Triez par ordre alphabétique : d'abord les dossiers, puis les fichiers
Sort-Object { $_.PSIsContainer }, Name |
# Pour chaque élément (dossier ou fichier)
ForEach-Object {
    # Calculez le hash SHA1 du fichier
    $hash = (Get-FileHash $_.FullName -Algorithm SHA1).Hash
    # Créez un objet personnalisé avec le nom, la taille (en mégaoctets) et le hash SHA1 du fichier
    [PSCustomObject]@{
        Nom = $_.Name
        Taille = [math]::Round($_.Length / 1MB, 2)
        SHA1 = $hash
    }
} |

# Formatez les résultats sous forme de tableau avec une taille de colonne automatique
Format-Table -AutoSize |
# Convertissez la sortie du tableau en une chaîne avec une largeur maximale de 4096 caractères pour éviter la troncature
Out-String -Width 4096 >
# Redirigez la sortie vers un fichier texte spécifié
nom_du_fichier.txt
