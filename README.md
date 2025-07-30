# 🖥️ Netdata Monitoring

<!--https://roadmap.sh/projects/simple-monitoring-dashboard-->>
Este proyecto tiene como objetivo aprender los fundamentos del monitoreo en tiempo real usando **Netdata** en sistemas Linux. Se practica tanto la instalación y configuración manual como la automatización mediante scripts.

---

## 📌 Objetivos

- Instalar Netdata en un sistema Linux.
- Visualizar métricas clave del sistema en tiempo real.
- Personalizar el dashboard de Netdata.
- Configurar alertas para detectar condiciones críticas.
- Automatizar el proceso con scripts (`setup.sh`, `test_dashboard.sh`, `cleanup.sh`).

---

## 📷 Vista previa del dashboard

Una vez iniciado Netdata, accedé desde tu navegador a:

```
http://localhost:19999
```

O si estás en un servidor remoto:

```
http://<IP_DEL_SERVIDOR>:19999
```

---

## ⚙️ Scripts incluidos

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

> Todos los scripts deben ejecutarse con permisos adecuados. Si hace falta, usá:
> 
> ```bash
> chmod +x setup.sh test_dashboard.sh cleanup.sh
> ```

---

## 🔔 Configuración de alertas

Podés agregar alertas personalizadas editando archivos en:

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

Luego de editar, reiniciá Netdata para aplicar los cambios:

```bash
sudo systemctl restart netdata
```

---

## 🧼 Limpieza

Si querés remover Netdata por completo, simplemente ejecutá:

```bash
./cleanup.sh
```

---

## ✅ Resultado

Al finalizar este proyecto vas a tener una comprensión práctica de:

- Cómo monitorear un sistema con Netdata.
- Cómo visualizar métricas en tiempo real.
- Cómo automatizar instalaciones y pruebas básicas.
- Cómo establecer alertas para mantener la salud del sistema.

---
