# Kali Configurations

Este repositorio contiene las configuraciones personalizadas utilizadas en mi máquina virtual Kali Linux. El objetivo es documentar y versionar las configuraciones clave para facilitar su mantenimiento y replicación en caso de reinstalación.

## Archivos incluidos
- `init.lua`: Configuración personalizada de Neovim, que incluye:
  - Autocompletado con `nvim-cmp`.
  - Resaltado avanzado con `Treesitter`.
  - Complementos visuales como `lualine`, `telescope`, y `indent-blankline`.
  - Funcionalidades adicionales como:
    - Cierre automático de delimitadores con `nvim-autopairs`.
    - Explorador de archivos con `nvim-tree`.
    - Comentarios rápidos con `Comment.nvim`.

## Cambios recientes
- **2024-11-29**: 
  - Añadido el complemento `nvim-autopairs` para cierre automático de delimitadores.
  - Mejoras visuales en Neovim:
    - Barra de estado con `lualine.nvim`.
    - Explorador de archivos con `nvim-tree.lua`.
    - Búsquedas rápidas con `telescope.nvim`.
    - Resaltado de indentación y bloques de código con `indent-blankline.nvim`.
- **2024-11-28**: 
  - Actualizada la configuración de Neovim para integrar nuevos colores y divisiones claras entre números de línea y código.
  - Configuración de `Treesitter` para mejorar el resaltado de sintaxis.
- **2024-11-27**:
  - Creación inicial del repositorio y subida del script para generar backups de configuraciones del sistema Kali Linux.

## Uso
1. **Neovim**:
   - Copia el archivo `init.lua` a la ruta:
     ```
     ~/.config/nvim/init.lua
     ```
   - Asegúrate de tener instalado `packer.nvim` para gestionar los complementos:
     ```
     git clone --depth 1 https://github.com/wbthomason/packer.nvim\
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim
     ```
   - Inicia Neovim y ejecuta `:PackerSync` para instalar los complementos.

2. **Script de backup**:
   - Ejecuta el script para generar un archivo comprimido con las configuraciones actuales de tu máquina:
     ```
     bash generate_backup.sh
     ```
   - El archivo comprimido se generará automáticamente en la carpeta compartida de tu máquina virtual.

## Requisitos
- **Neovim 0.7+**.
- Herramientas adicionales como `ripgrep` para búsquedas avanzadas con `telescope`.

## Contribuciones
Este repositorio está en constante evolución mientras aprendo y configuro nuevas herramientas en mi entorno Kali Linux. Si tienes sugerencias o mejoras, no dudes en compartirlas.

---
