# Laboratoire Active Directory – Windows Server 2025

Laboratoire personnel pour pratiquer l'administration d'un domaine Windows comme en soutien N2 :
identités et accès, services réseau, stratégies de groupe, mises à jour, automatisation PowerShell
et identité hybride avec Microsoft Entra ID.

## Environnement
| Machine | Rôle | Système | Adresse IP |
|---|---|---|---|
| DC01 | Contrôleur de domaine, DNS, DHCP, serveur de fichiers, WSUS, Entra Connect Sync | Windows Server 2025 (évaluation) | 192.168.237.10 (fixe) |
| PC01 | Poste client joint au domaine | Windows 11 Entreprise (évaluation) | DHCP (192.168.237.110) |

Domaine : `lab.local` · Hyperviseur : VMware Workstation Pro · Réseau : NAT (192.168.237.0/24)

## Progression
- [x] Jour 1 – Mise en place de VMware et installation de Windows Server 2025
- [x] Jour 2 – Adresse IP fixe, AD DS, promotion en contrôleur de domaine, vérification avec dcdiag
- [x] Jour 3 – Poste Windows 11 joint au domaine (dépannage DNS et conflit d'adresse IP)
- [x] Jour 4 – Unités d'organisation, utilisateurs, groupes, verrouillage et réinitialisation de mot de passe
- [x] Jour 5 – Stratégies de groupe (GPO) et diagnostic avec gpresult
- [x] Jour 6 – Partages, permissions NTFS et lecteur réseau par GPO
- [x] Jour 7 – Serveur DHCP (étendue, exclusions, options)
- [x] Jour 8 – Automatisation PowerShell : comptes en lot depuis un CSV, départs, corbeille AD
- [x] Jour 9 – WSUS : mises à jour en deux temps (Tests et Production)
- [x] Jour 10 – Identité hybride : synchronisation avec Microsoft Entra ID

## Compétences pratiquées
Active Directory · DNS · DHCP · GPO · NTFS · WSUS · PowerShell · Microsoft Entra ID ·
dépannage (dcdiag, nltest, Test-NetConnection, gpresult) · virtualisation

## Scripts
- [`scripts/New-EmployesDepuisCsv.ps1`](scripts/New-EmployesDepuisCsv.ps1) : crée des comptes AD depuis un fichier CSV,
  les place dans l'unité d'organisation et le groupe de leur service, et ignore les comptes existants.

## Quelques problèmes résolus
- Conflit d'adresse IP puis contrôleur de domaine sur le mauvais sous-réseau : diagnostic couche par couche
- Enregistrement DNS périmé après le changement d'adresse du serveur
- Partage créé sur tout le disque C: et permissions NTFS erronées : corrigés et vérifiés avec l'Accès effectif
- Plage DHCP commençant à l'adresse du serveur : détectée en vérifiant l'adresse reçue par le poste
- Disque de l'hôte presque plein (instantanés anciens) : 43 Go récupérés

## Journal
Le détail de chaque séance (commandes, vérifications, problèmes et solutions) se trouve dans le dossier
[`journal/`](journal/).
