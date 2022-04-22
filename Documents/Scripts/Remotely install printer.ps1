#Prompt for computer name
$ComputerName = Read-Host "Enter the computer name"
$PrinterName = Read-Host "Enter printer name"

#Ping computer - if True, check uptime
if (Test-Connection -ComputerName $ComputerName -Quiet) {Enable-PSRemoting -Force}-and{Enter-PSSession -ComputerName $ComputerName}-and{Add-Printer -ConnectionName \\cclprn01\$PrinterName}

#If False, throw error
#else {Write-Output "Unable to establish connection"}