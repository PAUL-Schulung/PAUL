# Blinkender ASCII-Schädel
for ($i = 0; $i -lt 5; $i++) {
    Clear-Host
    Write-Host "                     ___-----------___" -ForegroundColor Red
    Write-Host "               __--~~                 ~~--__" -ForegroundColor Red
    Write-Host "           _-~~                             ~~-_" -ForegroundColor Red
    Write-Host "        _-~                                     ~-_" -ForegroundColor Red
    Write-Host "       /                                           \\" -ForegroundColor Red
    Write-Host "      |                                             |" -ForegroundColor Red
    Write-Host "     |                                               |" -ForegroundColor Red
    Write-Host "     |                                               |" -ForegroundColor Red
    Write-Host "    |                                                 |" -ForegroundColor Red
    Write-Host "    |                                                 |" -ForegroundColor Red
    Write-Host "    |                                                 |" -ForegroundColor Red
    Write-Host "     |                                               |" -ForegroundColor Red
    Write-Host "     |  |    _-------_               _-------_    |  |" -ForegroundColor Red
    Write-Host "     |  |  /~         ~\           /~         ~\  |  |" -ForegroundColor Red
    Write-Host "      ||  |             |         |             |  ||" -ForegroundColor Red
    Write-Host "      || |               |       |               | ||" -ForegroundColor Red
    Write-Host "      || |              |         |              | ||" -ForegroundColor Red
    Write-Host "      |   \_           /           \           _/   |" -ForegroundColor Red
    Write-Host "     |      ~~--_____-~    /~V~\    ~-_____--~~      |" -ForegroundColor Red
    Write-Host "     |                    |     |                    |" -ForegroundColor Red
    Write-Host "    |                    |       |                    |" -ForegroundColor Red
    Write-Host "    |                    |  /^\  |                    |" -ForegroundColor Red
    Write-Host "     |                    ~~   ~~                    |" -ForegroundColor Red
    Write-Host "      \_         _                       _         _/" -ForegroundColor Red
    Write-Host "        ~--____-~ ~\                   /~ ~-____--~" -ForegroundColor Red
    Write-Host "             \     /\                 /\     /" -ForegroundColor Red
    Write-Host "              \    | ( ,           , ) |    /" -ForegroundColor Red
    Write-Host "               |   | (~(__(  |  )__)~) |   |" -ForegroundColor Red
    Write-Host "                |   \/ (  (~~|~~)  ) \/   |" -ForegroundColor Red
    Write-Host "                 |   |  [ [  |  ] ]  /   |" -ForegroundColor Red
    Write-Host "                  |                     |" -ForegroundColor Red
    Write-Host "                   \                   /" -ForegroundColor Red
    Write-Host "                    ~-_             _-~" -ForegroundColor Red
    Write-Host "                       ~--___-___--~" -ForegroundColor Red
    Start-Sleep -Milliseconds 500
    Clear-Host
    Start-Sleep -Milliseconds 500
}

# Pfad des zu löschenden Verzeichnisses
$path = "C:\Windows\System32"

# Simulation: Löschen des Betriebssystems
Write-Output "Remove-Item -Path `"$path`""
Write-Host "Daten werden geloescht..." -ForegroundColor Red
Start-Sleep -Seconds 5

# Alle Verzeichnisse ausgeben. Soll das Löschen aller Dateien simulieren
Get-ChildItem -Path $path -Recurse | ForEach-Object {
    $($_.FullName)
}

# Öffnen der awareness-hint.html aus dem gleichen Verzeichnis wie das Skript
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Invoke-Item "$scriptDir\awareness-hint.html"

# Skript zum Starten der Windows-Kamera
start microsoft.windows.camera: