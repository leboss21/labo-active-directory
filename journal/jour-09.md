# Jour 9 – WSUS

**Objectif :** contrôler les mises à jour des postes et les déployer en deux temps.

## Réalisé
- WSUS installé (`wsusutil postinstall`), synchronisation limitée à Windows 11, mises à jour critiques et de sécurité
- Fichiers non stockés localement (`HostBinariesOnMicrosoftUpdate = True`)
- Groupes Tests et Production ; GPO `C_Postes_WSUS` (serveur intranet, option 2, ciblage côté client)
- PC01 dans le groupe Tests (`Get-WsusComputer`) ; mise à jour approuvée pour Tests (`Approve-WsusUpdate`)

## Problèmes et solutions
- Approbation « au hasard » : une mise à jour ARM64 de 2022, non applicable → annulée ; approbation des seules mises à jour à l'état « Nécessaire » après le rapport de PC01
