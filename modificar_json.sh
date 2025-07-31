#!/bin/bash

# Verificamos si jq está instalado; si no, lo instalamos (para Ubuntu)
if ! command -v jq &>/dev/null; then
    echo "Instalando jq..."
    sudo apt update && sudo apt install -y jq
fi

# Chequeo de argumentos
if [ $# -ne 3 ]; then
    echo "Uso: $0 <clave> <nuevo_valor> <directorio>"
    exit 1
fi

CLAVE=$1
NUEVO_VALOR=$2
DIRECTORIO=$3

# Verifica si el directorio existe
if [ ! -d "$DIRECTORIO" ]; then
    echo "El directorio '$DIRECTORIO' no existe"
    exit 1
fi

# Recorre todos los .json del directorio y los modifica
for archivo in "$DIRECTORIO"/*.json; do
    echo "Modificando $archivo ..."
    jq --arg val "$NUEVO_VALOR" ".${CLAVE} = \$val" "$archivo" > tmp.json && mv tmp.json "$archivo"
done

echo "Todos los archivos JSON fueron modificados con '$CLAVE = $NUEVO_VALOR'"
