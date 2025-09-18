-- Cargar configuración básica y opciones
require("core.options")
require("core.keymaps")
require("core.lazy")

-- Cargar plugins y sus configuraciones
require("lazy").setup({
  require ("plugins.surround"),
  require ("plugins.flash"),
  require ("plugins.nvimtree"),
  require ("plugins.multicursor"),
  -- require ("plugins.treesitter"),
})

-- Si estás en VSCode, carga keymaps especiales
if vim.g.vscode then
  require("vsconfig.keymaps")
end
