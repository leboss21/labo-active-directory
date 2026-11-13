# Cree des comptes AD a partir d'un fichier CSV
param(
    [string]$CheminCsv = "C:\Scripts\employes.csv"
)

$motDePasse = Read-Host -AsSecureString "Mot de passe temporaire"
$employes   = Import-Csv -Path $CheminCsv

foreach ($e in $employes) {
    # Nom d'ouverture de session : 1re lettre du prenom + nom (ex. sroy)
    $login = ($e.Prenom.Substring(0,1) + $e.Nom).ToLower()
    $ou    = "OU=$($e.Service),OU=Employes,OU=LAB,DC=lab,DC=local"

    # Ne pas creer un compte qui existe deja
    if (Get-ADUser -Filter "SamAccountName -eq '$login'") {
        Write-Warning "$login existe deja : ignore"
        continue
    }

    New-ADUser -Name "$($e.Prenom) $($e.Nom)" -GivenName $e.Prenom -Surname $e.Nom `
        -SamAccountName $login -UserPrincipalName "$login@lab.local" `
        -Title $e.Titre -Department $e.Service -Path $ou `
        -AccountPassword $motDePasse -Enabled $true -ChangePasswordAtLogon $true

    Add-ADGroupMember -Identity "GG_$($e.Service)" -Members $login
    Write-Host "Cree : $login ($($e.Service))" -ForegroundColor Green
}
