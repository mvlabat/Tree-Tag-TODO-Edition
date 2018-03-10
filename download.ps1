$mapLocation = "$pwd\TreeTag_TODOEdition.w3x"
$timestamp = [int][double]::Parse((Get-Date -UFormat %s))
if (Test-Path -Path $mapLocation) {
    Move-Item -Path $mapLocation -Destination "$pwd\backup_$timestamp.w3x"
}
(new-object System.Net.WebClient).DownloadFile('http://62.75.198.124/TreeTag_TODOEdition.w3x', $mapLocation)
