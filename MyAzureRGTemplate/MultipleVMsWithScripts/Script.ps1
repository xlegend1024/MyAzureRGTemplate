#
# Script.ps1
#

# copy iperf
$storageDir = "c:\utils"
New-Item -Path c:\ -Name utils -ItemType Directory -Force
Set-Location $storageDir

$webclient = New-Object System.Net.WebClient
$iperfurl = "https://iperf.fr/download/windows/iperf-3.1.3-win64.zip"
$iperffile = "$storageDir\iperf-3.1.3-win64.zip"
$webclient.DownloadFile($iperfurl,$iperffile)
Expand-Archive -Path $iperffile -DestinationPath . -force

# install sysinternals
$sysinternalurl="https://download.sysinternals.com/files/SysinternalsSuite.zip"
$sysinternalfile="$storageDir\SysinternalsSuite.zip"
$webclient.DownloadFile($sysinternalurl,$sysinternalfile)
Expand-Archive -Path $sysinternalfile -DestinationPath Sysinteral -Force
