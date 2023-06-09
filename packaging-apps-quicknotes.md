# Quick Notes on Packaging Apps (.intunewin)
*Personal notes; not guidelines.*

### PSAppDeployToolkit
If `Execute-Process` is nonfunctional, run `Start-Process`.

###  Intune Win 32 App
- Set the path for teh script directory
- Ensure the file name matches the binary you are trying to load
- Silent install parameters, sonetimes it's just `/S' or `/ON`
- Verify with the vendor what the actual install documentation says
- On apps like Kahua, do silent install for .exe files:
    - `setup -q -s`

### Storing Error Logs
Stop error logs on end users' device
