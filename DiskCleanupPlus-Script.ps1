# Get initial free disk space
$InitialFree = [int]((Get-CimInstance -class win32_logicaldisk).freespace / 1GB)

# Empty Recycle Bin
Remove-Item 'C:\$Recycle.Bin\*' -Recurse -Force -ErrorAction SilentlyContinue


# Clear Windows log files
Remove-Item $env:windir\Logs\* -Recurse -Force -ErrorAction SilentlyContinue


# Clear Windows and User temp folders
Remove-Item $env:windir\Temp\* -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item $env:userprofile\AppData\Local\Temp\* -Recurse -Force -ErrorAction SilentlyContinue


# Clear SoftwareDistribution folder
try {
    $BITSStatusStart = (Get-Service BITS).Status
    $WUAUSERVStatusStart = (Get-Service wuauserv).Status
    Stop-Service bits,wuauserv
} finally {
    Remove-Item $env:windir\SoftwareDistribution\* -Recurse -Force -ErrorAction SilentlyContinue
 
    if ($BITSStatusStart -eq "Running") {
        Start-Service bits
    }
    if ($WUAUSERVStatusStart -eq "Running") {
        Start-Service wuauserv
    }
}


# Clean up WinSxS with DISM StartComponentCleanup
try {
    Dism.exe /Online /Cleanup-Image /StartComponentCleanup
} catch {
}


# Clear print jobs
try {
    net stop spooler
    Remove-Item $env:windir\System32\spool\PRINTERS\* -Recurse -Force -ErrorAction SilentlyContinue
    net start spooler
} catch {
}

$EndFree = [int]((Get-CimInstance -class win32_logicaldisk).freespace / 1GB)

$TotalFreed = $EndFree - $InitialFree

Write-Output "$TotalFreed GB have been cleared."