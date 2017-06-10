#
# Script.ps1
#
$storageDir = $env:HOMEPATH
$webclient = New-Object System.Net.WebClient
$iperfurl = "https://iperf.fr/download/windows/iperf-3.1.3-win64.zip"
$iperffile = "$storageDir\Downloads\iperf-3.1.3-win64.zip"
$webclient.DownloadFile($iperfurl,$iperffile)
Expand-Archive -Path $iperfurl -DestinationPath .


