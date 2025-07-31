# Modificador-de-Json
 modificar_json.sh

Primero darle permisos de ejecución (solo una vez por máquina):
chmod +x modificar_json.sh

Script en Bash para modificar valores en archivos JSON de forma masiva.

## Uso

./modificar_json.sh <clave> <nuevo_valor> /ruta/a/jsons

#Ejemplo:

bash:
./modificar_json.sh ip_memory \"10.0.0.2\" ~/tp-2025-1c-let-them-cook/memoria/


Si no tenés 'jq' instalado, el script lo instalará automáticamente.

