-- Configuración de nvim-surround

return {
  "kylechui/nvim-surround",
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({})
  end,
}
