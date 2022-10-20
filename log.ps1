
function WLog($LogText)
{ 
    CreateFolder $LogPath
    $TimeStamp = "$(Get-Date -UFormat "%Y-%m-%d %H:%M:%S") >> "
    $Log = "$TimeStamp$LogText"
    $Log | Out-File -FilePath $LogPath$LogFile -Append
    Write-Output $Log  
}

function CreateFolder($FolderName)
{
    if (Test-Path $FolderName) {
        # directory exists
    } else {
        New-Item $FolderName -ItemType Directory
        Write-Host "Log directory ' + $LogPath + ' created"
    }
}

$LogFile = "$(Get-Date -UFormat "%Y%m%d_%H%M%S").txt"
$LogPath = "C:\IBOTS\PowerShell Scripts\PS Script Logs\"

WLog "test"

WLog "test2"
WLog