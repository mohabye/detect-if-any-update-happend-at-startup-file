$StartupFolder = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"
$LastWriteTime = (Get-Item $StartupFolder).LastWriteTime
$CurrentTime = Get-Date

if ($LastWriteTime -gt $CurrentTime.AddMinutes(-1)) {
    Write-Host "The startup folder has been updated recently."
} else {
    Write-Host "No updates detected in the startup folder."
}
