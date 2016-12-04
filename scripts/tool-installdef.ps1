# Use this file to install tools

#Install Dev tools 
Write-BoxstarterMessage "Installing Dev-Tools"
cinst DotNet3.5 -y # Uses windows add/remove features
cinst DotNet4.0 -y
cinst DotNet4.5 -y

if(Test-PendingReboot){ Invoke-Reboot }

cinst psake -y
cinst git -y

if(Test-PendingReboot){ Invoke-Reboot }

#VB6

if(Test-Path "C:/users/vagrant/VB6Setup.exe") {
	Write-BoxstarterMessage "Installing Visual Studio 6.0"
	Start-Process C:/users/vagrant/VB6Setup.exe /verysilent -NoNewWindow -Wait
	Write-BoxstarterMessage "+ Done"
}

if(Test-PendingReboot){ Invoke-Reboot }


if(Test-Path "C:/users/vagrant/SP6Setup.exe") {
	Write-BoxstarterMessage "SP6"
	Start-Process C:/users/vagrant/SP6Setup.exe /verysilent -NoNewWindow -Wait
	Write-BoxstarterMessage "+Done"
}
