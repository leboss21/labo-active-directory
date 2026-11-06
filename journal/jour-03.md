# Jour 3 – PC01 joint au domaine

**Objectif :** poste Windows 11 (PC01) membre de `lab.local`.

## Réalisé
- VM Windows 11 Entreprise (TPM virtuelle, 3 Go, DHCP, DNS → 192.168.237.10)
- Jonction : `Add-Computer -DomainName lab.local -NewName PC01 -Restart`
- Vérifié : `whoami`, `$env:LOGONSERVER`, `nltest /sc_verify:lab.local`

## Problèmes et solutions
- **Timeout DNS** : DC01 sur le mauvais sous-réseau, plus un conflit d'IP → DC01 passé en 192.168.237.10
- **Ancien enregistrement DNS** → supprimé avec `Remove-DnsServerResourceRecord`
- **Disque plein** → instantanés pris VM éteinte, un seul par VM
