-- Mapeos generales
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Lider
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("n", "<Space>", "", opts)

-- Portapapeles
keymap({"n", "v"}, "<leader>y", "+y", opts)
keymap({"n", "v"}, "<leader>p", "+p", opts)

-- Tabs
keymap("n", "L", ":tabnext<CR>", opts)
keymap("n", "H", ":tabprevious<CR>", opts)

-- Utilities
keymap("n", "<C-a>", "ggVG", opts) -- Seleccionar todo
keymap("i", "jj", "<Esc>", opts) -- Salir del modo de inserción