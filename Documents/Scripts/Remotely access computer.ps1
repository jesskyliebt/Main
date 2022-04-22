#Prompt for computer name
$ComputerName = Read-Host -Prompt "Please enter the computer name"
#Prompt for install file location
$FileLocation = Read-Host -Prompt "Please enter the location of the exe file"
#Enable remote commands on remote computer
psexec.exe \\$ComputerName -u localadmin -p secret-p@$$word
Enable-PSRemoting -Force
Enter-PSSession -ComputerName $ComputerName
Invoke-Command -ComputerName $ComputerName -ScriptBlock { $FileLocation
}