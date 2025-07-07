-- Configuración de nvim-treesitter

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "html",
        "css",
        "bash",
        "markdown",
        "markdown_inline"
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
