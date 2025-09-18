return {
  "vscode-neovim/vscode-multi-cursor.nvim",
  event = "VeryLazy",
  cond = function()
    return vim.g.vscode -- solo cargar dentro de VSCode
  end,
  opts = {
    default_mappings = true,
    no_selection = false,
  },
  config = function(_, opts)
    -- Inicializar el plugin con las opciones
    require("vscode-multi-cursor").setup(opts)

    -- Tu keymap personalizado
    -- vim.keymap.set("n", "<C-d>", "mciw*<Cmd>nohl<CR>", { remap = true, desc = "Seleccionar palabra y buscar siguiente" })

    vim.keymap.set({ "n", "x", "i" }, "<C-d>", function()
      require("vscode-multi-cursor").addSelectionToNextFindMatch()
    end)

  end,
}
