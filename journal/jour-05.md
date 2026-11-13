# Jour 5 – Stratégies de groupe (GPO)

**Objectif :** déployer des paramètres par GPO et les vérifier.

## Réalisé
- `C_Postes_VerrouillageSession` (ordinateur, OU Postes) : verrouillage après 10 min
- `U_Employes_BloquerPanneau` (utilisateur, OU Employes) : créée avec `New-GPO`, `New-GPLink`, `Set-GPRegistryValue`
- Vérification : `gpupdate /force`, `gpresult /r`, rapport `gpresult /h`

## Problèmes et solutions
- GPO utilisateur liée à l'OU Postes sans effet → (ta conclusion du défi)
