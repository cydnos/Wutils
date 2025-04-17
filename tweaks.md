## Comment arrêter les processus d’arrière-plan après la fermeture de Microsoft Edge ? ([win10.fr](https://www.win10.fr/empecher-microsoft-edge-fonctionner-arriere-plan-windows))

Pour empêcher Microsoft Edge de fonctionner en arrière-plan après sa fermeture, procédez comme suit :
1. Ouvrez **Microsoft Edge**.
2. Cliquez sur le bouton **Paramètres et plus** (trois points horizontaux) en haut à droite.
3. Sélectionnez l’option **Paramètres**.
4. Cliquez sur **Système et performances**.
5. Désactivez la case à cocher **Continuer à exécuter les extensions et les applications en arrière-plan lorsque Microsoft Edge est fermé**.

# [Firefox](https://forum.malekal.com/viewtopic.php?t=27164)
> [about:config](https://kb.mozillazine.org/About:config_entries)

- Ne pas recharger les onglets en arrière-plan
```
browser.tabs.loadinBackground
```

- Ne pas rafraîchir l'onglet courant
```
accessibility.blockautrefresh
```
