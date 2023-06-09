# Bypass PC Security Protocols To Install Any Software 
Utilzing chocolatey to install any software you'd like and byapss system security protocols.

## How?
Install chocolatey as a non-admin from PowerShell ISE.

Set execution policy to bypass.
Make new directory in C:/ drive.

`makdir D:\ProgramData\chocoportable`

Change directory to newly created directory.

`cd C:\ProgramData\chocoportable`

In PowerShell ISE, create and save file where you can define and set global variables. In the file, put:
  `	# Set directory for installation - Chocolatey does not lock
	# down the directory if not the default
	$InstallDir='C:\ProgramData\chocoportable'
	$env:ChocolateyInstall="$InstallDir"
	
	# If your PowerShell Execution policy is restrictive, you may
	# not be able to get around that. Try setting your session to
	# Bypass.
	Set-ExecutionPolicy Bypass -Scope Process -Force;
	
	# All install options - offline, proxy, etc at
	# https://chocolatey.org/install 
  iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))`
  
Save file as 
ChocolateyInstallNonAdmin.ps1 to C:\ProgramData\chocolatey

