<#
## 📌 Récupération récursivce et graphique des condensats des fichiers d'un répertoire

### 📂 Fonctions principales
1. **Get-MarkdownTree**
   - Scanne un dossier et ses sous-dossiers.
   - Filtre les fichiers selon leurs extensions si spécifié.
   - Affiche les fichiers et dossiers avec leur date d'accès et leur empreinte SHA256 (pour les fichiers).
   - Génère un contenu Markdown structuré.

2. **Generate-MarkdownFile**
   - Détermine le nom du fichier Markdown de sortie.
   - Appelle `Get-MarkdownTree` pour générer le contenu.
   - Enregistre la sortie dans un fichier Markdown encodé en UTF-8.

###  Exécution
- Par défaut, lancez simplement le script :
  ```powershell
  Generate-MarkdownFile -Path (Get-Location).Path
  ```
- Vous pouvez aussi préciser un chemin spécifique :
  ```powershell
  Generate-MarkdownFile -Path "C:\MonDossier" -Filters ".txt", ".md"
  ```
  Cela listera uniquement les fichiers avec les extensions `.txt` et `.md`.

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
        $sha256 = $null

        if (!$_.PSIsContainer) {
            # Calculer le SHA256 pour les fichiers uniquement
            $fileStream = [System.IO.File]::Open($_.FullName, [System.IO.FileMode]::Open, [System.IO.FileAccess]::Read)
            $sha256 = (New-Object System.Security.Cryptography.SHA256CryptoServiceProvider).ComputeHash($fileStream)
            $sha256 = ($sha256 | ForEach-Object { $_.ToString("x2") }) -join ""
            $fileStream.Close()
        }

        if ($Filters.Count -eq 0 -or $Filters -contains $_.Extension) {
            if ($_.PSIsContainer) {
                # Préfixer les dossiers avec des #
                $MarkdownContent.Value += ("#" * ($Indent + 1)) + " $name".PadRight(50) + "$lastAccessTime`n"
            } else {
                # Ajouter les fichiers sans préfixe, en colonnes
                $MarkdownContent.Value += " " * ($Indent * 4) + "$name".PadRight(50) + "$lastAccessTime".PadRight(25) + "$sha256`n"
            }

            # Affichage coloré dans le terminal
            if ($_.PSIsContainer) {
                Write-Host (" " * ($Indent * 4) + $name.PadRight(50) + $lastAccessTime) -ForegroundColor Cyan
            } else {
                Write-Host (" " * ($Indent * 4) + $name.PadRight(50) + $lastAccessTime.PadRight(25) + $sha256) -ForegroundColor Yellow
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
