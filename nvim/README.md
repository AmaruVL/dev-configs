Para configuar con vscode, aseguarse de tener lo siguiente extra:

En settings.json:
"vscode-neovim.compositeTimeout": 200,
"vscode-neovim.compositeKeys": {
    "jj": {
      "command": "vscode-neovim.escape"
    }
  }

En keybindings.json:
// Para solucionar bug de vscode-nvim que no respeta lo mapeado en nvim config
  {
    "key": "ctrl+c",
    "command": "editor.action.clipboardCopyAction",
    "when": "textInputFocus && neovim.mode == 'visual'"
  }

