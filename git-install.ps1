<#
.SYNOPSIS
	This script performs the installation of Git
	
	# LICENSE #
	MIT License
.DESCRIPTION
	The script is provided as a template to perform an install Git.
  Elevation shouldn't be required depending on user permissions and assigned policy to device.
#>
Set-ExecutionPolicy Bypass -Scope LocalMachine
# Get latest download url for git-for-windows 64-bit exe
$git_url = "https://api.github.com/repos/git-for-windows/git/releases/latest"
$asset = Invoke-RestMethod -Method Get -Uri $git_url | % assets | where name -like "*64-bit.exe"
# Download installer
$installer = "$env:temp\$($asset.name)"
Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $installer
# Run installer
$git_install_inf = "<install inf file>"
$install_args = "/SP- /VERYSILENT /SUPPRESSMSGBOXES /NOCANCEL /NORESTART /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS /LOADINF=""$git_install_inf"""
Start-Process -FilePath $installer -ArgumentList $install_args -Wait
