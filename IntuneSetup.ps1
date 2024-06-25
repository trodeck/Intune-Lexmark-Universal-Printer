$PrinterName = Read-Host 'Printer Name'
$IPAddress   = Read-Host 'IP Address  '
Write-Host "Package Name"
Write-Host "Printer $PrinterName"
Write-Host "Install"
Write-Host "powershell.exe -executionpolicy bypass -file Install-Printer.ps1 -PortName 'IP_$IPAddress' -PrinterIP '$IPAddress' -PrinterName '$PrinterName' -DriverName 'Lexmark Universal v2 XL' -INFFile 'LMUD1P40.INF'"
Write-Host ""
Write-Host "Uninstall"
Write-Host "powershell.exe -executionpolicy bypass -file Uninstall-Printer.ps1 -PrinterName '$PrinterName'"
Write-Host ""
Write-Host "Detection"
Write-Host "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Printers\$PrinterName"
Write-Host ""