#Prompt for computer name
$ComputerName = Read-Host "Enter the computer name"

#Ping computer - if True, check uptime
if (Test-Connection -ComputerName $ComputerName -Quiet) {psinfo Uptime \\$ComputerName}

#If False, throw error
else {Write-Output "Unable to establish connection"}