-- vscode-multi-cursor: config con integración <C-d> y Flash
return {
  "vscode-neovim/vscode-multi-cursor.nvim",
  event = "VeryLazy",
  cond = not not vim.g.vscode,
  opts = {
    default_mappings = true,
    no_selection = false,
  },
  config = function()
    -- Opcional: mapear <C-d> para "addSelectionToNextFindMatch" de VSCode via wrapper
    vim.keymap.set({ "n", "x", "i" }, "<C-d>", function()
      require("vscode-multi-cursor").addSelectionToNextFindMatch()
    end, { desc = "Add next selection (VSCode Ctrl/⌘+D)" })

    -- Si quieres un “siguiente anterior” también:
    vim.keymap.set({ "n", "x" }, "<C-S-d>", function()
      require("vscode-multi-cursor").addSelectionToPreviousFindMatch()
    end, { desc = "Add previous selection" })

    -- Si usas flash.nvim, ya tienes por defecto:
    --  mcs (char) y mcw (word). No necesitas hacer nada más.
  end,
  keys = {
    -- (Opcional) atajo explícito por si quieres tenerlo visible en :map
    { "<C-d>", mode = { "n", "x", "i" }, desc = "VSCode addSelectionToNextFindMatch" },
    { "<C-S-d>", mode = { "n", "x" }, desc = "VSCode addSelectionToPreviousFindMatch" },
  },
}
