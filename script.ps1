# Pfad des zu löschenden Verzeichnisses
$path = "C:\Windows\System32"

# Simulation: Löschen des Betriebssystems
Write-Output "Remove-Item -Path `"$path`""
Write-Host "Daten werden geloescht..." -ForegroundColor red
Start-Sleep -Seconds 5

# Alle Verzeichnisse ausgeben. Soll das Löschen aller Dateien simulieren
Get-ChildItem -Path $path -Recurse | ForEach-Object {
    $($_.FullName)
}

# Öffnen der awareness-hint.html aus dem gleichen Verzeichnis wie das Skript
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Invoke-Item "$scriptDir\awareness-hint.html"