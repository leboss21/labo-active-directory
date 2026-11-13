# Jour 6 – Partages, NTFS et lecteur réseau

**Objectif :** dossiers par service, protégés par des permissions NTFS, plus un lecteur Z: par GPO.

## Réalisé
- Partage `\\DC01\Partages` (`New-SmbShare`), sécurité gérée par NTFS
- NTFS par groupe : `icacls /grant "LAB\GG_Comptabilite:(OI)(CI)M"`
- Vérification avec l'onglet **Accès effectif**, puis test réel sur PC01
- GPO `U_Employes_LecteurZ` (préférences > mappages de lecteurs)

## Problèmes et solutions
- Partage créé sur tout le disque C: → supprimé (`Remove-SmbShare`), recréé sur `C:\Partages`
- Comptabilite en lecture seule `(NP)(RX)` et groupe mal nommé (CG_) → `icacls /reset`, groupe renommé, permissions refaites
- VM très lentes → dossier des VM exclu de l'antivirus, mémoire VMware réservée en RAM
- Disque de l'hôte à 7 Go → instantanés supprimés (18 Go de fichiers delta), Windows Update coupé dans les VM, disques compactés : 50 Go libres
