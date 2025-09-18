-- Configuración de flash.nvim

return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  config = function()
    require("flash").setup({})
    vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#000000", bg = "#ffcc00", bold = true })
    vim.api.nvim_set_hl(0, "FlashMatch", { fg = "#ffffff", bg = "#0077ff", bold = true })
  end,
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump({
          jump = { pos = "end" },
        })
      end,
      desc = "Flash (final del match)"
    },
    {
      "gs",
      mode = { "n", "x", "o" },
      function() require("flash").jump() end,
      desc = "Flash (inicio del match)"
    },
    -- {
    --   "r",
    --   mode = { "n", "x", "o" },
    --   function() require("flash").remote() end,
    --   desc = "Flash Remote"
    -- },
    -- {
    --   "gs",
    --   mode = { "n", "x", "o" },
    --   function() require("flash").treesitter() end,
    --   desc = "Flash Treesitter"
    -- },
  }
}
