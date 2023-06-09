# Troubleshooting Git Notes

### Updating Git
`git --version`

`git update-git-for-windows`

`git update-git-for-windows --force'

### Uninstalling Git
- Locate git in C:/ drive
- Run uninstall unins000.exe
- Follow prompts for uninstalling Git to your devices

### Reinstalling Git
Reinstall Git with either manual install, running a PowerShell script file, or running the following Winget command:
`Winget install --id Git.Git -e --source winget`

Open Bash.
Verify Git version.

`git --version`

### Troubleshooting Git SSL Issue
For each Git coammdn you run, use `-f` or `-k` or `--insecure` at the end of each command to bypass the SSL requirement. This is inadvisable. Use at your own risk.

Degine global config for deactivating SSL verification. **Note: Recommend not doing this.**

`git config --global http.sslVerify false!`

### Notes on SSL
http.sslVerify

    Whether to verify the SSL certificate when fetching or pushing over HTTPS.
    Can be overridden by the GIT_SSL_NO_VERIFY environment variable.
    
http.sslCAInfo

    File containing the certificates to verify the peer with when fetching or pushing
    over HTTPS. Can be overridden by the GIT_SSL_CAINFO environment variable.
    
http.sslCAPath

    Path containing files with the CA certificates to verify the peer with when
    fetching or pushing over HTTPS.
    Can be overridden by the GIT_SSL_CAPATH environment variable.
    
A few other useful SSL configuration options:

http.sslCert

    File containing the SSL certificate when fetching or pushing over HTTPS.
    Can be overridden by the GIT_SSL_CERT environment variable.
    
http.sslKey

    File containing the SSL private key when fetching or pushing over HTTPS.
    Can be overridden by the GIT_SSL_KEY environment variable.
    
http.sslCertPasswordProtected

    Enable git's password prompt for the SSL certificate. Otherwise OpenSSL will
    prompt the user, possibly many times, if the certificate or private key is encrypted.
    Can be overridden by the GIT_SSL_CERT_PASSWORD_PROTECTED environment variable.

From <https://stackoverflow.com/questions/11621768/how-can-i-make-git-accept-a-self-signed-certificate/26785963#26785963> ![image](https://github.com/ShannonCanTech/DevOps-MDM-Support-Basics/assets/17083932/d521f6ff-73e9-42da-95ba-2ad57956eb2f)
