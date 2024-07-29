
Param(
    [string]$domain_fqdn
)

$pfxOutputFilePath = "C:\temp\$domain_fqdn.pfx"

Write-Host "Using Certificate $pfxOutputFilePath"

# **--- Certificate Import ---**
Import-PfxCertificate -FilePath $pfxOutputFilePath -CertStoreLocation Cert:\LocalMachine\My 
Write-Host "Certificate imported into the Local Machine Personal store."
