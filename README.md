# Configuración personal de desarrollo

Este repositorio contiene mis configuraciones y scripts para optimizar mi entorno de desarrollo.

## 📂 Estructura del repositorio

- **nvim/** → Configuración personalizada de **Neovim**.
  - `init.lua` → Archivo principal de configuración.
  - `lua/core/` → Opciones y mapeos de teclado básicos.
  - `lua/plugins/` → Configuración de plugins.
  - `lua/vsconfig/` → Configuración específica para usar Neovim como editor de Visual Studio Code.
  - `script.sh` → Script auxiliar relacionado con Neovim.
- **vscode/** → Configuraciones y ajustes de **Visual Studio Code**.
  - `settings.json` → Configuración principal.
  - `keybindings.json` → Atajos de teclado.
- **terminal/** → Scripts y comandos útiles para la terminal.
  - `commands.sh` → Lista de comandos comunes.
- **README.md** → Este archivo con la guía de uso.

---

## 🚀 Instalación rápida de configuracion de Neovim

### Linux / macOS
```bash
git clone https://github.com/AmaruVL/dev-configs.git
mkdir -p ~/.config
mv dev-configs/nvim ~/.config/nvim
rm -rf dev-configs
````

### Windows (PowerShell)

```powershell
git clone https://github.com/AmaruVL/dev-configs.git
if (!(Test-Path "$env:LOCALAPPDATA\nvim")) {
    New-Item -Path "$env:LOCALAPPDATA\nvim" -ItemType Directory
}
Move-Item -Path "dev-configs\nvim" -Destination "$env:LOCALAPPDATA\nvim" -Force
Remove-Item -Recurse -Force dev-configs
```
