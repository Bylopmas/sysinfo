# ============================================================
# Proyecto: SysInfo
# Autor: Bylopmas
# Descripcion: Consulta PowerShell, politicas de ejecucion
# y datos del sistema operativo y la PC.
# ============================================================

Write-Host "`n===== 1. POWERSHELL =====" -ForegroundColor Cyan

Write-Host "Version: $($PSVersionTable.PSVersion)"
Write-Host "Edicion: $($PSVersionTable.PSEdition)"
Write-Host "Versiones compatibles: $($PSVersionTable.PSCompatibleVersions -join ', ')"

# 2. POLITICA DE EJECUCION
Write-Host "`n===== 2. POLITICA DE EJECUCION =====" -ForegroundColor Cyan

Get-ExecutionPolicy -List |
    Format-Table -AutoSize

# 3. EDICION Y VERSION DE WINDOWS
Write-Host "`n===== 3. SISTEMA OPERATIVO =====" -ForegroundColor Cyan

Get-ComputerInfo |
    Select-Object OsName, WindowsEditionId, OsVersion |
    Format-List

# 4. INFORMACION COMPLETA DE LA PC MEDIANTE CMD
Write-Host "`n===== 4. INFORMACION COMPLETA DE LA PC (CMD) =====" -ForegroundColor Cyan

systeminfo

Write-Host "`n===== FIN DEL INFORME =====" -ForegroundColor Green

Read-Host "`nPresiona ENTER para cerrar"

