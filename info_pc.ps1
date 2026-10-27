
# ============================================================
# Proyecto: SysInfo - Inventario de PC
# Autor: Bylopmas
# Descripcion: Obtiene informacion del sistema operativo,
# PowerShell, politicas de ejecucion y hardware.
# ============================================================

Write-Host "`n===== 1. VERSION DE POWERSHELL =====" -ForegroundColor Cyan
$PSVersionTable | Format-List

Write-Host "`n===== 2. POLITICAS DE EJECUCION =====" -ForegroundColor Cyan
Get-ExecutionPolicy -List | Format-Table -AutoSize

Write-Host "`n===== 3. SISTEMA OPERATIVO =====" -ForegroundColor Cyan
Get-CimInstance Win32_OperatingSystem |
    Select-Object Caption, Version, BuildNumber, OSArchitecture |
    Format-List

Write-Host "`n===== 4. INFORMACION DEL EQUIPO =====" -ForegroundColor Cyan
Get-CimInstance Win32_ComputerSystem |
    Select-Object Manufacturer, Model, SystemType,
        TotalPhysicalMemory |
    Format-List

Write-Host "`n===== 5. PROCESADOR =====" -ForegroundColor Cyan
Get-CimInstance Win32_Processor |
    Select-Object Name, NumberOfCores,
        NumberOfLogicalProcessors, MaxClockSpeed |
    Format-List

Write-Host "`n===== 6. MEMORIA RAM =====" -ForegroundColor Cyan
Get-CimInstance Win32_PhysicalMemory |
    Select-Object Manufacturer, Capacity, Speed |
    Format-Table -AutoSize

Write-Host "`n===== 7. PLACA BASE Y BIOS =====" -ForegroundColor Cyan
Get-CimInstance Win32_BaseBoard |
    Select-Object Manufacturer, Product |
    Format-List

Get-CimInstance Win32_BIOS |
    Select-Object Manufacturer, SMBIOSBIOSVersion |
    Format-List

Write-Host "`n===== 8. DISCOS =====" -ForegroundColor Cyan
Get-CimInstance Win32_DiskDrive |
    Select-Object Model, MediaType, Size, InterfaceType |
    Format-Table -AutoSize

Write-Host "`n===== 9. ADAPTADORES DE RED =====" -ForegroundColor Cyan
Get-NetAdapter -ErrorAction SilentlyContinue |
    Select-Object Name, Status, LinkSpeed |
    Format-Table -AutoSize

Write-Host "`n===== 10. INFORMACION COMPLEMENTARIA (CMD) =====" -ForegroundColor Cyan
systeminfo

Write-Host "`n===== FIN DEL INFORME =====" -ForegroundColor Green
