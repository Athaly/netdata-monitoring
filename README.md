# Netdata Monitoring

Proyecto original: https://roadmap.sh/projects/simple-monitoring-dashboard

Este proyecto tiene como objetivo aprender los fundamentos del monitoreo en tiempo real usando Netdata en sistemas Linux. Se abordan tanto la instalación y configuración manual como la automatización mediante scripts.

## Objetivos

- Instalar Netdata en un sistema Linux
- Visualizar métricas clave del sistema en tiempo real
- Personalizar el panel (dashboard) de Netdata
- Configurar alertas para condiciones críticas
- Automatizar el proceso con scripts (`setup.sh`, `test_dashboard.sh`, `cleanup.sh`)

## Vista previa del dashboard

Una vez iniciado Netdata, se puede acceder desde el navegador:

```
http://localhost:19999
```

O desde un servidor remoto:

```
http://<IP_DEL_SERVIDOR>:19999
```

## Scripts incluidos

### `setup.sh`

Instala Netdata y lo habilita como servicio en sistemas Arch Linux:

```bash
./setup.sh
```

### `test_dashboard.sh`

Genera carga artificial en la CPU durante 30 segundos para probar el dashboard y las alertas:

```bash
./test_dashboard.sh
```

### `cleanup.sh`

Desinstala Netdata y limpia el sistema:

```bash
./cleanup.sh
```

> Todos los scripts deben tener permisos de ejecución:
> 
> ```bash
> chmod +x setup.sh test_dashboard.sh cleanup.sh
> ```

## Configuración de alertas

Las alertas personalizadas se configuran en:

```
/etc/netdata/health.d/
```

Ejemplo de alerta para CPU > 80%:

```yaml
alarm: high_cpu_usage
on: system.cpu
lookup: average -1m percentage
every: 10s
warn: $this > 80
info: CPU usage > 80%
```

Reiniciar Netdata para aplicar los cambios:

```bash
sudo systemctl restart netdata
```

## Limpieza

Para remover Netdata por completo:

```bash
./cleanup.sh
```

## Resultado

Al completar este proyecto, se obtiene experiencia práctica en:

- Monitoreo de sistemas con Netdata
- Visualización de métricas en tiempo real
- Automatización de instalación y pruebas
- Configuración de alertas para salud del sistema
