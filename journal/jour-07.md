# Jour 7 – Serveur DHCP

**Objectif :** DC01 distribue les adresses IP à la place de VMware.

## Réalisé
- Rôle DHCP installé et autorisé dans AD (`Add-DhcpServerInDC`)
- Étendue `LAN-Labo` : .100 à .200, exclusion .100 à .109, options routeur, DNS et domaine
- DHCP de VMware désactivé (VMnet8)
- PC01 : 192.168.237.110 reçue de DC01 (`ipconfig /all`, `Get-DhcpServerv4Lease`)

## Problèmes et solutions
- Drapeau de post-installation absent → configuration en PowerShell
- Plage commençant à .10 (faute de frappe) → PC01 en .11 ; corrigée avec `Set-DhcpServerv4Scope`
