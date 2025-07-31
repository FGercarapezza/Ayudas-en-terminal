#!/bin/bash

# Parámetro opcional: cantidad de líneas del historial
LINEAS=${1:-10000}

CONFIG="$HOME/.tmux.conf"

# Crear el archivo si no existe
touch "$CONFIG"

# Actualizar o agregar configuración
if grep -q "set-option -g history-limit" "$CONFIG"; then
    sed -i "s/^set-option -g history-limit.*/set-option -g history-limit $LINEAS/" "$CONFIG"
else
    echo "set-option -g history-limit $LINEAS" >> "$CONFIG"
fi

if grep -q "set-option -g mouse" "$CONFIG"; then
    sed -i "s/^set-option -g mouse.*/set-option -g mouse on/" "$CONFIG"
else
    echo "set-option -g mouse on" >> "$CONFIG"
fi

# Recargar configuración si tmux está corriendo
if tmux info &>/dev/null; then
    tmux source-file "$CONFIG"
    echo "✔ Configuración de tmux aplicada y recargada con límite de $LINEAS líneas."
else
    echo "✔ Configuración de tmux guardada en ~/.tmux.conf (límite: $LINEAS líneas). Iniciá tmux para usarla."
fi
