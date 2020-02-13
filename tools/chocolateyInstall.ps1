$ErrorActionPreference = 'Stop';

$tools = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = 'nice-dcv-client'
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url			= 'https://d1uj6qtbmh3dt5.cloudfront.net/2019.1/Clients/nice-dcv-client-Release-2019.1-7114.msi'
  checksum      = '37fc3fc9aa0240f568d26a8493ef53731c1ed1e2e75ae50eb1e195fe7b61ec04'
  checksumType  = 'sha256'
  fileType      = 'msi'

  silentArgs    = '/quiet /norestart'
  softwareName  = 'nice-dcv-client*'
  validExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs

