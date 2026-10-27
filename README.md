
# SysInfo - Inventario de PC con PowerShell

## Descripción
Proyecto que utiliza PowerShell para recopilar
información del sistema operativo y del hardware de una PC.

## Objetivos
- Consultar la versión y edición de PowerShell.
- Identificar las políticas de ejecución de scripts.
- Obtener información de Windows y su arquitectura.
- Consultar procesador, memoria RAM y placa base.
- Identificar discos y adaptadores de red.
- Complementar la información con el comando `systeminfo` de CMD.

## Archivo principal
- `info_pc.ps1`: script para consultar información técnica del equipo.

## Requisitos
- Sistema operativo Windows.
- Windows PowerShell o PowerShell compatible con los comandos utilizados.
- Permisos para consultar información del sistema.

## Ejecución
Abrir PowerShell en la carpeta donde se encuentra el archivo y ejecutar:

```powershell
.\info_pc.ps1
```

Si la política de ejecución lo impide, consultar la configuración vigente
y las instrucciones del docente antes de modificarla.

## Tecnologías
- PowerShell
- Windows Management Instrumentation (CIM)
- Símbolo del sistema (CMD)
- GitHub

## Autor
César Gastón López Bylopmas
