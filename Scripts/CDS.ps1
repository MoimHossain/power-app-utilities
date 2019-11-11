

// List Environment without CDS
Get-AdminPowerAppEnvironment | Where-Object {$_.CommonDataServiceDatabaseType -eq "None" } | Format-Table -Property DisplayName, CreatedTime, EnvironmentName


// Create new
New-AdminPowerAppCdsDatabase -EnvironmentName $YourEnvironmentId -CurrencyName HRK -LanguageName 1050 -WaitUntilFinished $false

// List all currencies
Get-AdminPowerAppCdsDatabaseCurrencies

// List all languages
Get-AdminPowerAppCdsDatabaseLanguages
