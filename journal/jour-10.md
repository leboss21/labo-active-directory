# Jour 10 – Entra ID et identité hybride

**Objectif :** synchroniser lab.local avec Microsoft Entra ID.

## Réalisé
- Locataire Entra ID (compte Azure gratuit) + alerte de budget à 5 $
- Compte dédié avec le rôle Administrateur d'identité hybride (moindre privilège)
- Entra Connect Sync (configuration rapide, synchronisation du hachage des mots de passe) sur DC01
- Vérification : `Start-ADSyncSyncCycle`, `Get-MgUser` (OnPremisesSyncEnabled)
- Source d'autorité : modification dans l'AD, remontée dans Entra

## Problèmes et solutions
- Suffixe UPN lab.local non routable → utilisateurs en @tenant.onmicrosoft.com
- Connect-MgGraph : « Approbation administrateur requise » avec le rôle Administrateur d'identité hybride → consentement accordé par l'Administrateur général (moindre privilège)
