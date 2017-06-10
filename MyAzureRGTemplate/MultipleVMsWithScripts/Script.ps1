#
# Script.ps1
#

# copy iperf
$storageDir = "c:\utils"
$webclient = New-Object System.Net.WebClient
$iperfurl = "https://iperf.fr/download/windows/iperf-3.1.3-win64.zip"
$iperffile = "$storageDir\iperf-3.1.3-win64.zip"
$webclient.DownloadFile($iperfurl,$iperffile)
Expand-Archive -Path $iperfurl -DestinationPath .

# install sysinternals
$sysinternalurl="https://download.sysinternals.com/files/SysinternalsSuite.zip"
$sysinternalfile="$storageDir\SysinternalsSuite.zip"
$webclient.DownloadFile($sysinternalurl,$sysinternalfile)
Expand-Archive -Path $sysinternalurl -DestinationPath .
