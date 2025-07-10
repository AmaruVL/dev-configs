-- ─── LAZY.NVIM SETUP ─────────────────────────────────────────────────────────────
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- ─── PLUGINS ──────────────────────────────────────────────────────────────────────
require("lazy").setup({
  -- Surround
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end
  },

  -- Flash
  {
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
        function() require("flash").jump() end,
        desc = "Flash"
      },
      {
        "gs",
        mode = { "n", "x", "o" },
        function() require("flash").treesitter() end,
        desc = "Flash Treesitter"
      },
    }
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua", "vim", "vimdoc",
          "javascript", "typescript", "tsx",
          "json", "html", "css", "bash",
          "markdown", "markdown_inline"
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
})

-- ─── OPCIONES GENERALES ───────────────────────────────────────────────────────────
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.hlsearch = false
vim.o.clipboard = "unnamedplus"
vim.cmd("colorscheme default")

-- ─── TECLAS LÍDER ─────────────────────────────────────────────────────────────────
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<Space>", "", { noremap = true, silent = true })

-- ─── ACCESOS RÁPIDOS GENERALES ────────────────────────────────────────────────────
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Portapapeles
keymap({"n", "v"}, "<leader>y", "+y", opts)
keymap({"n", "v"}, "<leader>p", "+p", opts)

-- Tabs (Neovim puro o VSCode)
if vim.g.vscode then
  keymap("n", "L", "<Cmd>Tabnext<CR>", opts)
  keymap("n", "H", "<Cmd>Tabprevious<CR>", opts)

  -- Acciones de VSCode
  local vscode = require('vscode').action

  keymap({ "n", "v" }, "<leader>t", function() vscode("workbench.action.terminal.toggleTerminal") end, opts)
  keymap({ "n", "v" }, "<leader>b", function() vscode("editor.debug.action.toggleBreakpoint") end, opts)
  keymap({ "n", "v" }, "<leader>d", function() vscode("editor.action.showHover") end, opts)
  keymap({ "n", "v" }, "<leader>a", function() vscode("editor.action.quickFix") end, opts)
  keymap({ "n", "v" }, "<leader>sp", function() vscode("workbench.actions.view.problems") end, opts)
  keymap({ "n", "v" }, "<leader>cn", function() vscode("notifications.clearAll") end, opts)
  keymap({ "n", "v" }, "<leader>ff", function() vscode("workbench.action.quickOpen") end, opts)
  keymap({ "n", "v" }, "<leader>cp", function() vscode("workbench.action.showCommands") end, opts)
  keymap({ "n", "v" }, "<leader>pr", function() vscode("code-runner.run") end, opts)
  keymap({ "n", "v" }, "<leader>fd", function() vscode("editor.action.formatDocument") end, opts)

  -- Harpoon
  keymap({ "n", "v" }, "<leader>ha", function() vscode("vscode-harpoon.addEditor") end, opts)
  keymap({ "n", "v" }, "<leader>ho", function() vscode("vscode-harpoon.editorQuickPick") end, opts)
  keymap({ "n", "v" }, "<leader>he", function() vscode("vscode-harpoon.editEditors") end, opts)

  for i = 1, 9 do
    keymap({ "n", "v" }, "<leader>h" .. i, function() vscode("vscode-harpoon.gotoEditor" .. i) end, opts)
  end
else
  keymap("n", "L", ":tabnext<CR>", opts)
  keymap("n", "H", ":tabprevious<CR>", opts)
end
