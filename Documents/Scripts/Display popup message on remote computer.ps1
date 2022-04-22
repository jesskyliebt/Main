#Prompt for computer name
$ComputerName = Read-Host -Prompt "Enter the computer name"
#Prompt for computer name
$Message = Read-Host -Prompt "Enter your message"
#Send popup message
Invoke-WmiMethod -Path Win32_Process -Name Create -ArgumentList "msg * $Message" -ComputerName $ComputerName