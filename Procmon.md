[Ressource Microsoft](https://learn.microsoft.com/fr-fr/sysinternals/downloads/procmon)

# Parametrage basique 

- Stopper la capture en cours (*Ctrl + E*) au lancement du programme. Procmon capturant tout les evenements du processeur, il est extremement verbeux et la trace grandit très rapidement.

- Cocher *Filter > Drop filtered events* permet de limiter le nombre d'evenements a ceux pertinents et donc de limiter la consommation de ressources en limitant les données traitees.

# Lancement de la trace

Le but du jeu ici est d'exécuter le plus rapidement possible l'enchaînement d'actions suivant :

1. Demarrer la trace  (*Ctrl + E*)
2. Executer le binaire a analyser
3. Ouvrir le Process Tree (*Ctrl + T*) ou *Tools > Process Tree*, selectionner le binaire a analyser puis cliquer sur *Include Subtree*.
 
Les evenements affichés se limiteront désormais à ceux liés au binaire a analyser.
Il faut desormais rechercher les entrees pertinentes parmi le volume généralement important d'evenements presents.

# Affinage

## File summary
*Tools > File summary* permet d'afficher tout les fichiers impactés par les evenements affiché dans la trace. La colonne *Write Bytes* est intéressante car elle permet de savoir quels fichiers ont été ecrits dans le système.

## Highlight
La fonctionnalité **Highlight** (Ctrl + H) permet créer des filtres afin de mettre en valeur certains éléments d'une trace procmon sans faire disparaitre les évènements ne correspondant pas a la recherche. Son principal avantage est la possibilité de faire des *ET logiques* en cochant plusieurs filtres Highlight.

Il est possible de transformer un Highlight en filtre direct via *Make Filter*.

## Filtres direct
Ceux-ci permettent de restreindre l'affichage des evenements de la trace la visualisation des filtres de la session actuelle se fait avec le raccourci (*Ctrl + L*) ou *Filter > Filter*.
Il est possible de cocher et décocher certaines entrées de cette vue selon les besoins de la recherche.

> Les filtres s'appliquent en tant que *OU logiques*.

Le meilleur moyen de mettre en place des filtres direct reste cependant d'ouvrir le menu contextuel sur un evenement (*clic droit*) puis de choisir un filtre a lui appliquer.
Si la valeur pertinente fait partie d'une chaine plus large, la meilleure option reste de choisir l'option _**Edit Filter**_

## Suggestions
Voici quelques filtres intéressants à mettre en place pour visualiser des opérations importantes.

### Fichiers
|Column|Relation|Value|Action|Explication|
|-|-|-|-|-|
|Operation|is|CreateFile|Include|Creation de fichier|
|Detail|begins with|Desired Access: Genetic Write|Include|Creation de fichier|
|Operation|is|WriteFile|Include|Modification de fichier|
|Detail|begins with|Flags: FILE_DISPOSITION_DELETE|Include|Suppression de fichier|

### Registre
|Column|Relation|Value|Action|Explication|
|-|-|-|-|-|
|Detail|begins with|Desired Access: Maximum Allowed|Include|Acces a une cle avec probable intention d'ecrire|
|Operation|is|RegCreateKey|Include|Creation de sous-cle de registre|
|Operation|is|RegSetValue|Include|Creation de valeur de sous-cle de registre|

### Bruit potentiel

Ces evenements semblent benins et donc a exclure afin de restreindre la vue a des evenements potentiellements plus interessant :

|Column|Relation|Value|Action|Explication|
|-|-|-|-|-|Exclude
|Detail|contains|Desired Access: Read|Exclude|
|Detail|contains|Desired Access: Execute/Traverse|Exclude|
|Detail|contains|Desired Access: Generic Read|Exclude|
|Detail|contains|Desired Access: Notify|Exclude|
