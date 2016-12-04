# Use this file to prep the machine

$ErrorActionPreference = "Stop"

. a:\Test-Command.ps1

Write-BoxstarterMessage "Setting network profile to private" # If not set packer wont pickup on winrm
Set-NetConnectionProfile -Name Network -NetworkCategory Private

Enable-RemoteDesktop
netsh advfirewall firewall add rule name="Remote Desktop" dir=in localport=3389 protocol=TCP action=allow

Update-ExecutionPolicy -Policy Unrestricted

if (Test-Command -cmdname 'Uninstall-WindowsFeature') {
    Write-BoxstarterMessage "Removing unused features..."
    Remove-WindowsFeature -Name 'Powershell-ISE'
    Get-WindowsFeature | 
    ? { $_.InstallState -eq 'Available' } | 
    Uninstall-WindowsFeature -Remove
}

# Remove onedrive (crap-ware)
. a:\remove-onedrive.ps1

. a:\openssh.ps1 -AutoStart true


# Install-WindowsUpdate -AcceptEula

# Write-BoxstarterMessage "Removing page file"
# $pageFileMemoryKey = "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management"
# Set-ItemProperty -Path $pageFileMemoryKey -Name PagingFiles -Value ""

# if(Test-PendingReboot){ Invoke-Reboot }

# Write-BoxstarterMessage "Setting up winrm"
# netsh advfirewall firewall add rule name="WinRM-HTTP" dir=in localport=5985 protocol=TCP action=allow

# $enableArgs=@{Force=$true}
# try {
 # $command=Get-Command Enable-PSRemoting
  # if($command.Parameters.Keys -contains "skipnetworkprofilecheck"){
      # $enableArgs.skipnetworkprofilecheck=$true
  # }
# }
# catch {
  # $global:error.RemoveAt(0)
# }
# Enable-PSRemoting @enableArgs
# Enable-WSManCredSSP -Force -Role Server
# winrm set winrm/config/client/auth '@{Basic="true"}'
# winrm set winrm/config/service/auth '@{Basic="true"}'
# winrm set winrm/config/service '@{AllowUnencrypted="true"}'
# Write-BoxstarterMessage "winrm setup complete"