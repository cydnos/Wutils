## Comment arrêter les processus d’arrière-plan après la fermeture de Microsoft Edge ? ([win10.fr](https://www.win10.fr/empecher-microsoft-edge-fonctionner-arriere-plan-windows))

Pour empêcher Microsoft Edge de fonctionner en arrière-plan après sa fermeture, procédez comme suit :
1. Ouvrez **Microsoft Edge**.
2. Cliquez sur le bouton **Paramètres et plus** (trois points horizontaux) en haut à droite.
3. Sélectionnez l’option **Paramètres**.
4. Cliquez sur **Système et performances**.
5. Désactivez la case à cocher **Continuer à exécuter les extensions et les applications en arrière-plan lorsque Microsoft Edge est fermé**.

# [Firefox](https://forum.malekal.com/viewtopic.php?t=27164)
> [about:config](https://kb.mozillazine.org/About:config_entries)

| Comportement | Clé | Valeur |
|-|:-:|-|
| Ne pas rafraîchir l'onglet courant | `accessibility.blockautrefresh` | `true` |
| Réduire la fréquence des sauvegardes de session à 2 minutes | `browser.sessionstore.interval` | `120000` |
| Activer l'onglet "Firefox View" | `browser.tabs.firefox-view` | `true` |
| Ne pas recharger les onglets en arrière-plan | `browser.tabs.loadinBackground` | `false` |
| Activer la vue divisée | `browser.tabs.splitView.enabled` | `true` |
| Désactiver l’autoplay des vidéos/médias | `media.autoplay.enabled.user-gestures-needed` & `media.autoplay.allow-muted` | `true` & `false` |
|  | `` | `` |

# Brave
`brave://flags`


| Comportement | Clé | Valeur |
|-|:-:|-|
| Autoriser l'utilisation de plusieurs threads afin d'accélérer le téléchargement. | `Parallel Downloading` | `Enabled` |
|Enables Playlist – Mac, Windows, Linux, Android| `Playlist` | `Enabled` |
| Use fake UA for playlist – Mac, Windows, Linux, Android | `PlaylistFakeUA` | `Enabled` |
| Gestion de l'interface tactile. Inutile sur écrans non tactiles. | `Touch UI Layout` | `Disabled` |



<!-- 
|  | `` | `` |
-->
