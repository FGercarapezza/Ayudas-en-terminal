# 🔧 Modificador-de-Json
 modificar_json.sh

## Primero darle permisos de ejecución (solo una vez por máquina):
chmod +x modificar_json.sh

Script en Bash para modificar valores en archivos JSON de forma masiva.

## 🚀 Uso
```bash
./modificar_json.sh <clave> <nuevo_valor> /ruta/a/jsons
```

#Ejemplo:

```bash
./modificar_json.sh ip_memory \"10.0.0.2\" ~/tp-2025-1c-let-them-cook/memoria/
```

Si no tenés 'jq' instalado, el script lo instalará automáticamente.





# 🔧 Modificador de configuración de tmux

Este pequeño script en Bash permite configurar automáticamente:

- El **límite de líneas de historial** en `tmux`.
- El **soporte para scroll con el mouse**.

Ideal para quienes prefieren una terminal con mucho historial visible y soporte completo de mouse.

---

## 🚀 Uso

```bash
./configurar_tmux.sh [LÍNEAS]
[LINEAS] es opcional, por defecto 10000
