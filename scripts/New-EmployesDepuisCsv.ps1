New-Item -ItemType Directory -Path C:\Scripts -Force
@"
Prenom,Nom,Service,Titre
Sophie,Roy,Comptabilite,Comptable
Luc,Cote,Comptabilite,Technicien comptable
Julie,Bouchard,Comptabilite,Commis comptable
Marc,Pelletier,Comptabilite,Controleur
Nadia,Gauthier,Comptabilite,Comptable
Kevin,Morin,Informatique,Technicien N1
Isabelle,Lavoie,Informatique,Technicienne N2
Samuel,Fortin,Informatique,Administrateur systemes
Chloe,Girard,Informatique,Analyste
David,Bergeron,Informatique,Technicien N1
"@ | Set-Content C:\Scripts\employes.csv

Import-Csv C:\Scripts\employes.csv | Format-Table
