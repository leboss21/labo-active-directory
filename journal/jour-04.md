# Jour 4 – OU, utilisateurs et groupes

**Objectif :** structure AD d'une petite entreprise et tickets N2 courants.

## Réalisé
- OU : LAB > Employes (Comptabilite, Informatique), Groupes, Postes
- Utilisateurs : `New-ADUser` (mot de passe saisi avec Read-Host -AsSecureString)
- Groupes globaux de sécurité : `New-ADGroup`, `Add-ADGroupMember`
- PC01 déplacé dans l'OU Postes : `Move-ADObject`
- Verrouillage après 5 essais : `Set-ADDefaultDomainPasswordPolicy`
- Tickets simulés : `Search-ADAccount -LockedOut`, `Unlock-ADAccount`, `Set-ADAccountPassword -Reset`

## Problèmes et solutions
- Case « Déverrouiller le compte » invisible → compte déjà déverrouillé automatiquement (durée de verrouillage : 15 min) ; vérifié avec `Get-ADUser -Properties LockedOut`
