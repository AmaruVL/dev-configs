return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  config = function()
    require("nvim-tree").setup({
      view = {
        number = true,         -- número absoluto
        relativenumber = true, -- número relativo
        -- mappings = {
        --   list = {
        --     { key = { "l", "<CR>", "o" }, action = "edit" },  -- Abrir archivo o carpeta
        --     { key = "h", action = "close_node" },             -- Cerrar carpeta
        --     { key = "v", action = "vsplit" },                 -- Abrir en vertical
        --   },
        -- },
      },
      filters = {
        dotfiles = false,       -- mostrar archivos ocultos
        custom = { "^.git$" },  -- ocultar solo la carpeta .git
      },
    })

    -- Atajo para abrir/cerrar el árbol
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
  end,
}
