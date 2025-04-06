<#
Ce script PowerShell a pour but de générer une structure en format Markdown représentant l'arborescence des fichiers et dossiers d'un répertoire donné.
Les fonctionnalités incluent :
1. Parcourir l'arborescence des fichiers et dossiers de manière récursive.
2. Filtrer les fichiers par extensions spécifiques (via le paramètre `Filters`).
3. Afficher les informations des fichiers et dossiers (nom et dernier accès) avec formatage coloré dans le terminal.
4. Générer un fichier Markdown contenant l'arborescence, avec un nom basé sur le répertoire actuel et un horodatage.

Utilisation :
- Le script peut être exécuté directement sans paramètre, où il générera le fichier Markdown pour le répertoire actuel.
- Vous pouvez spécifier un chemin (`Path`) ou un ensemble de filtres (`Filters`) pour personnaliser l'exécution.

Exemple :
Generate-MarkdownFile -Path "C:\Users\Documents" -Filters ".txt", ".md"
#>

function Get-MarkdownTree {
    param(
        [string]$Path = ".",
        [int]$Indent = 0,
        [ref]$MarkdownContent = "",
        [string[]]$Filters = @() # Extensions à inclure
    )

    Get-ChildItem -Path $Path -ErrorAction SilentlyContinue | ForEach-Object {
        $name = $_.Name
        $lastAccessTime = $_.LastAccessTime.ToString("yyyy-MM-dd HH:mm:ss")

        if ($Filters.Count -eq 0 -or $Filters -contains $_.Extension) {
            if ($_.PSIsContainer) {
                # Préfixer les dossiers avec des #
                $MarkdownContent.Value += ("#" * ($Indent + 1)) + " $name".PadRight(50) + "$lastAccessTime`n"
            } else {
                # Ajouter les fichiers sans préfixe, en colonnes
                $MarkdownContent.Value += " " * ($Indent * 4) + "$name".PadRight(50) + "$lastAccessTime`n"
            }

            # Affichage coloré dans le terminal
            if ($_.PSIsContainer) {
                Write-Host (" " * ($Indent * 4) + $name.PadRight(50) + $lastAccessTime) -ForegroundColor Cyan
            } else {
                Write-Host (" " * ($Indent * 4) + $name.PadRight(50) + $lastAccessTime) -ForegroundColor Yellow
            }

            # Si c'est un dossier, appel récursif
            if ($_.PSIsContainer) {
                Get-MarkdownTree -Path $_.FullName -Indent ($Indent + 1) -MarkdownContent $MarkdownContent -Filters $Filters
            }
        }
    }
}

function Generate-MarkdownFile {
    param(
        [string]$Path = ".",
        [string[]]$Filters = @() # Extensions à inclure
    )

    # Obtenir le nom du fichier avec timestamp
    $currentPath = Get-Location
    $timestamp = (Get-Date).ToString("yyyyMMdd_HHmmss")
    $outputFileName = "$($currentPath.Path.Split('\')[-1])_$timestamp.md"

    # Contenu Markdown (passé par référence)
    $markdownContent = [ref] ""

    # Générer le contenu Markdown
    Get-MarkdownTree -Path $Path -MarkdownContent $markdownContent -Filters $Filters

    # Écrire la sortie Markdown dans un fichier
    $markdownContent.Value | Out-File -Encoding UTF8 $outputFileName

    Write-Host "La sortie a été sauvegardée dans le fichier Markdown : $outputFileName" -ForegroundColor Green
}

# Exécution par défaut (si aucun paramètre n'est fourni)
Generate-MarkdownFile -Path (Get-Location).Path
