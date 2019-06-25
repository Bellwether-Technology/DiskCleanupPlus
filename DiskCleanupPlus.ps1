<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    DiskCleanupPlus
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '608,400'
$Form.text                       = "Form"
$Form.TopMost                    = $false

$BITSLabel                       = New-Object system.Windows.Forms.Label
$BITSLabel.text                  = "BITS"
$BITSLabel.AutoSize              = $true
$BITSLabel.width                 = 25
$BITSLabel.height                = 10
$BITSLabel.location              = New-Object System.Drawing.Point(378,47)
$BITSLabel.Font                  = 'Microsoft Sans Serif,10'

$BITSStatusLabel                 = New-Object system.Windows.Forms.Label
$BITSStatusLabel.AutoSize        = $true
$BITSStatusLabel.width           = 25
$BITSStatusLabel.height          = 10
$BITSStatusLabel.location        = New-Object System.Drawing.Point(468,47)
$BITSStatusLabel.Font            = 'Microsoft Sans Serif,10'

$WUAUSERVLabel                   = New-Object system.Windows.Forms.Label
$WUAUSERVLabel.text              = "WUAUSERV"
$WUAUSERVLabel.AutoSize          = $true
$WUAUSERVLabel.width             = 25
$WUAUSERVLabel.height            = 10
$WUAUSERVLabel.location          = New-Object System.Drawing.Point(332,78)
$WUAUSERVLabel.Font              = 'Microsoft Sans Serif,10'

$WUAUSERVStatusLabel             = New-Object system.Windows.Forms.Label
$WUAUSERVStatusLabel.AutoSize    = $true
$WUAUSERVStatusLabel.width       = 25
$WUAUSERVStatusLabel.height      = 10
$WUAUSERVStatusLabel.location    = New-Object System.Drawing.Point(468,78)
$WUAUSERVStatusLabel.Font        = 'Microsoft Sans Serif,10'

$ServicesLabel                   = New-Object system.Windows.Forms.Label
$ServicesLabel.text              = "Services"
$ServicesLabel.AutoSize          = $true
$ServicesLabel.width             = 25
$ServicesLabel.height            = 10
$ServicesLabel.location          = New-Object System.Drawing.Point(421,18)
$ServicesLabel.Font              = 'Microsoft Sans Serif,10,style=Bold'

$SoftwareDistCleanBtn            = New-Object system.Windows.Forms.Button
$SoftwareDistCleanBtn.text       = "Clear SoftwareDistribution"
$SoftwareDistCleanBtn.width      = 187
$SoftwareDistCleanBtn.height     = 28
$SoftwareDistCleanBtn.location   = New-Object System.Drawing.Point(48,164)
$SoftwareDistCleanBtn.Font       = 'Microsoft Sans Serif,10'

$SoftwareDistLabel               = New-Object system.Windows.Forms.Label
$SoftwareDistLabel.text          = "SoftwareDistribution"
$SoftwareDistLabel.AutoSize      = $true
$SoftwareDistLabel.width         = 25
$SoftwareDistLabel.height        = 10
$SoftwareDistLabel.location      = New-Object System.Drawing.Point(299,174)
$SoftwareDistLabel.Font          = 'Microsoft Sans Serif,10'
$SoftwareDistLabel.ForeColor     = ""

$SoftwareDistSizeLabel           = New-Object system.Windows.Forms.Label
$SoftwareDistSizeLabel.AutoSize  = $true
$SoftwareDistSizeLabel.width     = 25
$SoftwareDistSizeLabel.height    = 10
$SoftwareDistSizeLabel.location  = New-Object System.Drawing.Point(466,174)
$SoftwareDistSizeLabel.Font      = 'Microsoft Sans Serif,10'

$WinTempLabel                    = New-Object system.Windows.Forms.Label
$WinTempLabel.text               = "Windows Temp"
$WinTempLabel.AutoSize           = $true
$WinTempLabel.width              = 25
$WinTempLabel.height             = 10
$WinTempLabel.location           = New-Object System.Drawing.Point(324,208)
$WinTempLabel.Font               = 'Microsoft Sans Serif,10'

$WinTempSizeLabel                = New-Object system.Windows.Forms.Label
$WinTempSizeLabel.AutoSize       = $true
$WinTempSizeLabel.width          = 25
$WinTempSizeLabel.height         = 10
$WinTempSizeLabel.location       = New-Object System.Drawing.Point(466,208)
$WinTempSizeLabel.Font           = 'Microsoft Sans Serif,10'

$LogsLabel                       = New-Object system.Windows.Forms.Label
$LogsLabel.text                  = "Logs"
$LogsLabel.AutoSize              = $true
$LogsLabel.width                 = 25
$LogsLabel.height                = 10
$LogsLabel.location              = New-Object System.Drawing.Point(387,242)
$LogsLabel.Font                  = 'Microsoft Sans Serif,10'

$LogsSizeLabel                   = New-Object system.Windows.Forms.Label
$LogsSizeLabel.AutoSize          = $true
$LogsSizeLabel.width             = 25
$LogsSizeLabel.height            = 10
$LogsSizeLabel.location          = New-Object System.Drawing.Point(468,242)
$LogsSizeLabel.Font              = 'Microsoft Sans Serif,10'

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Disk Space Usage"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(421,141)
$Label1.Font                     = 'Microsoft Sans Serif,10,style=Bold'

$RecycleBinLabel                 = New-Object system.Windows.Forms.Label
$RecycleBinLabel.text            = "Recycle Bin"
$RecycleBinLabel.AutoSize        = $true
$RecycleBinLabel.width           = 25
$RecycleBinLabel.height          = 10
$RecycleBinLabel.location        = New-Object System.Drawing.Point(345,275)
$RecycleBinLabel.Font            = 'Microsoft Sans Serif,10'

$RecycleBinSizeLabel             = New-Object system.Windows.Forms.Label
$RecycleBinSizeLabel.AutoSize    = $true
$RecycleBinSizeLabel.width       = 25
$RecycleBinSizeLabel.height      = 10
$RecycleBinSizeLabel.location    = New-Object System.Drawing.Point(468,275)
$RecycleBinSizeLabel.Font        = 'Microsoft Sans Serif,10'

$WinSxSLabel                     = New-Object system.Windows.Forms.Label
$WinSxSLabel.text                = "WinSxS"
$WinSxSLabel.AutoSize            = $true
$WinSxSLabel.width               = 25
$WinSxSLabel.height              = 10
$WinSxSLabel.location            = New-Object System.Drawing.Point(370,306)
$WinSxSLabel.Font                = 'Microsoft Sans Serif,10'

$WinSxSSizeLabel                 = New-Object system.Windows.Forms.Label
$WinSxSSizeLabel.AutoSize        = $true
$WinSxSSizeLabel.width           = 25
$WinSxSSizeLabel.height          = 10
$WinSxSSizeLabel.location        = New-Object System.Drawing.Point(467,306)
$WinSxSSizeLabel.Font            = 'Microsoft Sans Serif,10'

$ComponentCleanupBtn             = New-Object system.Windows.Forms.Button
$ComponentCleanupBtn.text        = "Component Cleanup"
$ComponentCleanupBtn.width       = 187
$ComponentCleanupBtn.height      = 30
$ComponentCleanupBtn.location    = New-Object System.Drawing.Point(48,300)
$ComponentCleanupBtn.Font        = 'Microsoft Sans Serif,10'

$WinTempClearBtn                 = New-Object system.Windows.Forms.Button
$WinTempClearBtn.text            = "Clear Temp Files"
$WinTempClearBtn.width           = 187
$WinTempClearBtn.height          = 30
$WinTempClearBtn.location        = New-Object System.Drawing.Point(48,196)
$WinTempClearBtn.Font            = 'Microsoft Sans Serif,10'
$WinTempClearBtn.ForeColor       = ""

$WinLogsClearBtn                 = New-Object system.Windows.Forms.Button
$WinLogsClearBtn.text            = "Clear Windows Logs"
$WinLogsClearBtn.width           = 187
$WinLogsClearBtn.height          = 30
$WinLogsClearBtn.location        = New-Object System.Drawing.Point(48,231)
$WinLogsClearBtn.Font            = 'Microsoft Sans Serif,10'

$EmptyRecycleBinBtn              = New-Object system.Windows.Forms.Button
$EmptyRecycleBinBtn.text         = "Empty Recycle Bin"
$EmptyRecycleBinBtn.width        = 187
$EmptyRecycleBinBtn.height       = 30
$EmptyRecycleBinBtn.location     = New-Object System.Drawing.Point(48,266)
$EmptyRecycleBinBtn.Font         = 'Microsoft Sans Serif,10'

$RunAsAdminLabel                 = New-Object system.Windows.Forms.Label
$RunAsAdminLabel.AutoSize        = $true
$RunAsAdminLabel.width           = 25
$RunAsAdminLabel.height          = 10
$RunAsAdminLabel.location        = New-Object System.Drawing.Point(144,359)
$RunAsAdminLabel.Font            = 'Microsoft Sans Serif,10'

$Form.controls.AddRange(@($BITSLabel,$BITSStatusLabel,$WUAUSERVLabel,$WUAUSERVStatusLabel,$ServicesLabel,$SoftwareDistCleanBtn,$SoftwareDistLabel,$SoftwareDistSizeLabel,$WinTempLabel,$WinTempSizeLabel,$LogsLabel,$LogsSizeLabel,$Label1,$RecycleBinLabel,$RecycleBinSizeLabel,$WinSxSLabel,$WinSxSSizeLabel,$ComponentCleanupBtn,$WinTempClearBtn,$WinLogsClearBtn,$EmptyRecycleBinBtn,$RunAsAdminLabel))

$ComponentCleanupBtn.Add_Click({ ComponentCleanup })
$SoftwareDistCleanBtn.Add_Click({ ClearSoftwareDistribution })
$WinTempClearBtn.Add_Click({ ClearWindowsTemp })
$WinLogsClearBtn.Add_Click({ ClearWindowsLogs })
$EmptyRecycleBinBtn.Add_Click({ EmptyRecycleBin })

function EmptyRecycleBin {
    Remove-Item C:\$Recycle.Bin\* -Recurse -Force -ErrorAction SilentlyContinue
    $RecycleBinSizeLabel.text = "{0:N2} MB" -f (((robocopy.exe C:\$Recycle.Bin\ NULL /L /XJ /R:0 /W:1 /NP /E /BYTES /NFL /NDL /NJH /MT:64)[-4] -replace '\D+(\d+).*','$1') / 1MB)    
    }

function ClearWindowsLogs {
    Remove-Item $env:windir\Logs\* -Recurse -Force -ErrorAction SilentlyContinue
    $LogsSizeLabel.text = "{0:N2} MB" -f (((robocopy.exe $env:windir\Logs\ NULL /L /XJ /R:0 /W:1 /NP /E /BYTES /NFL /NDL /NJH /MT:64)[-4] -replace '\D+(\d+).*','$1') / 1MB)    
}

function ClearWindowsTemp {
    Remove-Item $env:windir\Temp\* -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item $env:userprofile\AppData\Local\Temp\* -Recurse -Force -ErrorAction SilentlyContinue
    $AppDataTempSize = ((robocopy.exe $env:userprofile\AppData\Local\Temp\ NULL /L /XJ /R:0 /W:1 /NP /E /BYTES /NFL /NDL /NJH /MT:64)[-4] -replace '\D+(\d+).*','$1') / 1MB
    $WinTempSize = ((robocopy.exe $env:windir\Temp\ NULL /L /XJ /R:0 /W:1 /NP /E /BYTES /NFL /NDL /NJH /MT:64)[-4] -replace '\D+(\d+).*','$1') / 1MB
    $WinTempSizeLabel.text = "{0:N2} MB" -f ($AppDataTempSize + $WinTempSize)
}

function ClearSoftwareDistribution { 
    try {
        Stop-Service bits,wuauserv
        $BITSStatusLabel.text = (Get-Service bits).Status
        $WUAUSERVStatusLabel.text = (Get-Service wuauserv).Status
    } finally {
    Remove-Item $env:windir\SoftwareDistribution\* -Recurse -Force -ErrorAction SilentlyContinue
    if ($BITSStatusStart -eq "Running") {
        Start-Service bits
        $BITSStatusLabel.text = (Get-Service bits).Status
    }
    if ($WUAUSERVStatusStart -eq "Running") {
        Start-Service wuauserv
        $WUAUSERVStatusLabel.text = (Get-Service wuauserv).Status
    }
    $SoftwareDistSizeLabel.text = "{0:N2} MB" -f (((robocopy.exe $env:windir\SoftwareDistribution\ NULL /L /XJ /R:0 /W:1 /NP /E /BYTES /NFL /NDL /NJH /MT:64)[-4] -replace '\D+(\d+).*','$1') / 1MB) 
    }
}

function ComponentCleanup { 
    $cmds = {
        Dism.exe /Online /Cleanup-Image /StartComponentCleanup
        Read-Host "Press enter to exit."
    }
    Start-Process powershell -ArgumentList $cmds
    GetSpace
}

function GetSpace {
    $SoftwareDistSizeLabel.text = "{0:N2} MB" -f (((robocopy.exe $env:windir\SoftwareDistribution\ NULL /L /XJ /R:0 /W:1 /NP /E /BYTES /NFL /NDL /NJH /MT:64)[-4] -replace '\D+(\d+).*','$1') / 1MB) 
    $AppDataTempSize = ((robocopy.exe $env:userprofile\AppData\Local\Temp\ NULL /L /XJ /R:0 /W:1 /NP /E /BYTES /NFL /NDL /NJH /MT:64)[-4] -replace '\D+(\d+).*','$1') / 1MB
    $WinTempSize = ((robocopy.exe $env:windir\Temp\ NULL /L /XJ /R:0 /W:1 /NP /E /BYTES /NFL /NDL /NJH /MT:64)[-4] -replace '\D+(\d+).*','$1') / 1MB
    $WinTempSizeLabel.text = "{0:N2} MB" -f ($AppDataTempSize + $WinTempSize)
    $LogsSizeLabel.text = "{0:N2} MB" -f (((robocopy.exe $env:windir\Logs\ NULL /L /XJ /R:0 /W:1 /NP /E /BYTES /NFL /NDL /NJH /MT:64)[-4] -replace '\D+(\d+).*','$1') / 1MB)
    $RecycleBinSizeLabel.text = "{0:N2} MB" -f (((robocopy.exe C:\$Recycle.Bin\ NULL /L /XJ /R:0 /W:1 /NP /E /BYTES /NFL /NDL /NJH /MT:64)[-4] -replace '\D+(\d+).*','$1') / 1MB)
    $WinSxSSizeLabel.text = "{0:N2} MB" -f (((robocopy.exe $env:windir\WinSxS\ NULL /L /XJ /R:0 /W:1 /NP /E /BYTES /NFL /NDL /NJH /MT:64)[-4] -replace '\D+(\d+).*','$1') / 1MB)
}

#Write your logic code here
$ErrorActionPreference = 'SilentlyContinue'

$IsAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if ($IsAdmin -eq $true) {
    $RunAsAdminLabel.text = "Running as Administrator"
    $RunAsAdminLabel.ForeColor = "#0bc50e"
} else {
    $RunAsAdminLabel.text = "Please run as Administrator"
    $RunAsAdminLabel.ForeColor = "#FF0000"   
}

$BITSStatusStart = (Get-Service bits).Status
$WUAUSERVStatusStart = (Get-Service wuauserv).Status
$BITSStatusLabel.text = $BITSStatusStart
$WUAUSERVStatusLabel.text = $WUAUSERVStatusStart

GetSpace
[void]$Form.ShowDialog()