# Parametrage basique 

Stopper la capture en cours (*Ctrl + E*) au lancement du programme. Procmon capturant tout les évenments du processeur, il est extremement verbeux et la trace grandit très rapidement.

Cocher *Filter > Drop filtered events* permet de limiter le nombre d'evenements a ceux pertinents et donc de limiter la consommation de ressources en limitant les données traitees.

# Lancement de la trace

Le but du jeu ici est d'exécuter le plus rapidement possible l'enchaînement d'actions possible :

1. Demarrer la trace  (*Ctrl + E*)
2. Executer le binaire a analyser
3. Ouvrir le Process Tree (*Ctrl + T*) ou *Tools > Process Tree*, selectionner le binaire a analyser puis cliquer sur *Include Subtree*.
 
Les evenements affichés se limiteront désormais à ceux liés au binaire a analyser.
Il faut desormais rechercher les evenements pertinents parmi le volume généralement important d'evenements presents.

# Affinage

## Highlight
La fonctionnalité **Highlight** (Ctrl + H) permet créer des filtres afin de mettre en valeur des éléments d'une trace procmon sans supprimer le reste des évènements. Son principal avantage est la possibilité de faire des *ET logiques* en cochant plusieurs filtres Highlight.

Il est possible de transformer un Highlight en filtre direct via *Make Filter*.

## Filtres direct
Ceux-ci permettent de restreindre l'affichage des evenements de la trace et leur affichage se fait avec le raccourci (*Ctrl + L*) ou *Filter > Filter*.
La vue des filtres permet de cocher et décocher des filtres au besoin.

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

