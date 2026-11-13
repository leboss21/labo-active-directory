# Jour 8 – Automatisation PowerShell

**Objectif :** créer des comptes en lot, gérer les départs et restaurer un compte supprimé.

## Réalisé
- Script [`New-EmployesDepuisCsv.ps1`](../scripts/New-EmployesDepuisCsv.ps1) : 10 comptes depuis un CSV, ajout au groupe du service, vérification des doublons
- Départ d'un employé : `Disable-ADAccount`, retrait des groupes, déplacement dans l'OU Desactives
- Corbeille AD activée ; compte supprimé puis restauré avec ses groupes (`Restore-ADObject`)

## Problèmes et solutions
- 
