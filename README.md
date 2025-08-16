# Configuración personal de desarrollo

Este repositorio contiene mis configuraciones y scripts para optimizar mi entorno de desarrollo.

## 📂 Estructura del repositorio

* **nvim/** → Configuración personalizada de **Neovim**.

  * `init.lua` → Archivo principal de configuración.
  * `lua/core/` → Opciones y mapeos de teclado básicos.
  * `lua/plugins/` → Configuración de plugins.
  * `lua/vsconfig/` → Configuración específica para usar Neovim como editor de Visual Studio Code.
  * `script.sh` → Script auxiliar relacionado con Neovim.
* **vscode/** → Configuraciones y ajustes de **Visual Studio Code**.

  * `settings.json` → Configuración principal.
  * `keybindings.json` → Atajos de teclado.
* **terminal/** → Scripts y comandos útiles para la terminal.

  * `commands.sh` → Lista de comandos comunes.
* **README.md** → Este archivo con la guía de uso.

---

## 🚀 Instalación de Neovim

### Linux / macOS

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> ~/.bashrc
source ~/.bashrc
```

---

## 📥 Descargar y aplicar configuración de Neovim

### Linux / macOS

```bash
git clone https://github.com/AmaruVL/dev-configs.git && \
rm -rf ~/.config/nvim && \
mv dev-configs/nvim ~/.config/nvim && \
rm -rf dev-configs
```

### Windows (PowerShell)

```powershell
git clone https://github.com/AmaruVL/dev-configs.git
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\nvim" -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force "$env:LOCALAPPDATA"
Move-Item "dev-configs\nvim" "$env:LOCALAPPDATA\nvim"
Remove-Item -Recurse -Force "dev-configs"
```

