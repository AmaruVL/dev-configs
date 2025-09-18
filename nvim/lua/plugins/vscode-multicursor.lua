return {
  "vscode-neovim/vscode-multi-cursor.nvim",
  event = "VeryLazy",
  cond = function()
    return vim.g.vscode -- solo cargar dentro de VSCode
  end,
  opts = {
    default_mappings = true, -- activa los mapeos por defecto
    no_selection = false,    -- crea cursores + selección múltiple
  },
}
