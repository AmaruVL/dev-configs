return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- iconos opcionales
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        number = true,         -- número absoluto
        relativenumber = true, -- numeración relativa para saltos
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      git = {
        enable = true,
        ignore = false,
      },
    })

    -- Atajo para abrir/cerrar el árbol
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
  end,
}
