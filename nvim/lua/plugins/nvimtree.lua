return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  config = function()
    require("nvim-tree").setup({
      view = {
        number = true,         -- número absoluto
        relativenumber = true, -- número relativo
      },
    })

    -- Atajo para abrir/cerrar el árbol
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
  end,
}
