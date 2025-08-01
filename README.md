# 💻 Trabajo Práctico: Let Them Cook

Este repositorio contiene el desarrollo del TP de Sistemas Operativos de la UTN-FRBA (1C2025).

---

## 🛠️ Despliegue del Entorno

### 🚀 Pasos Iniciales

1. **Iniciar la VM** y obtener tu IP local con:

   ```bash
   ifconfig
   ```

2. **Conectarse con Putty** desde tu host usando la IP obtenida.

---

### 🔑 Token para GitHub

Asegurate de tener cargada tu Token en GitHub para poder clonar los repositorios privados.

```
Llave: saddasdasdsa
```

---

## 📦 Clonar Repositorios

> ⚠️ Para conexiones lentas (como las de la facultad), se recomienda clonar **solo la rama principal**.

### Repositorio del TP (requiere clave SSH)

```bash
git clone --depth 1 --filter=blob:none --single-branch --branch main https://github.com/sisoputnfrba/tp-2025-1c-let-them-cook.git
```

### Ayudas (sin clave)

```bash
git clone --depth 1 --branch main https://github.com/FGercarapezza/Ayudas-en-terminal.git
```

### Scripts de Pruebas (solo para Memoria)

```bash
git clone --depth 1 --branch main https://github.com/sisoputnfrba/revenge-of-the-cth-pruebas.git
```

---

## 🧪 Verificar Entorno de Trabajo

Asegurate de tener Go instalado con versión **1.24.0 o superior**:

```bash
go version
```

---

## 🧰 Uso de Scripts de Ayuda

### 🔧 Modificar configuración de archivos JSON

1. Dar permisos de ejecución:

   ```bash
   chmod +x modificar_json.sh
   ```

2. Usar el script:

   ```bash
   ./modificar_json.sh <clave> <nuevo_valor> <ruta_a_jsons>
   ```

---

### 🖱️ Habilitar Scroll del Mouse en `tmux` (opcional)

1. Dar permisos de ejecución:

   ```bash
   chmod +x configurar_tmux.sh
   ```

2. Ejecutar (por defecto 10000 líneas):

   ```bash
   ./configurar_tmux.sh [LINEAS]
   ```

---

## 🔌 Configuración de IPs en Archivos JSON

> Usar el script `modificar_json.sh` dentro de la carpeta de **Ayudas**.

- **Memoria**: Poner memoria IP `<propia>` y revisar paths.  
- **Kernel**: Poner kernel IP `<propia>`, poner memoria IP `<externa>`.  
- **IO**: Poner io IP `<propia>`, poner kernel IP `<externa>`.  
- **CPU**: Poner cpu IP `<propia>`, poner memoria IP `<externa>`, poner kernel IP `<externa>`.

---

## ⚙️ Indicar configuración por parámetro al iniciar el módulo

1. **Planificación Corto Plazo**: `cp`  
2. **Planificación Mediano y Largo Plazo**: `mp-lp`  
3. **Memoria SWAP**: `swap`  
4. **Memoria - Caché**: `cache`  
5. **Memoria - TLB**: `tlb`  
6. **Estabilidad General**: `estabilidad`


## 🧠 Comandos Útiles

| Comando   | Descripción                      |
|-----------|----------------------------------|
| `htop`    | Administrador de tareas          |
| `cat`     | Ver contenido de archivos        |
| `nano`    | Editor de texto en terminal      |
| `cd ..`   | Subir un nivel de directorio     |
| `cd`      | Ir al directorio home            |
| `ls`      | Listar archivos en el directorio |
| `tmux`    | Multiplexar terminales           |

---
