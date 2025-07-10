-- Keymaps exclusivos para entornos VSCode con Neovim

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
local vscode = require("vscode").action

-- Tabs en VSCode
keymap("n", "L", "<Cmd>Tabnext<CR>", opts)
keymap("n", "H", "<Cmd>Tabprevious<CR>", opts)

-- Acciones comunes
keymap({ "n", "v" }, "<leader>t", function() vscode("workbench.action.terminal.toggleTerminal") end, opts)
-- keymap({ "n", "v" }, "<leader>b", function() vscode("editor.debug.action.toggleBreakpoint") end, opts)
keymap({ "n", "v" }, "<leader>d", function() vscode("editor.action.showHover") end, opts)
keymap({ "n", "v" }, "<leader>a", function() vscode("editor.action.quickFix") end, opts)
keymap({ "n", "v" }, "<leader>sp", function() vscode("workbench.actions.view.problems") end, opts)
-- keymap({ "n", "v" }, "<leader>cn", function() vscode("notifications.clearAll") end, opts)
-- keymap({ "n", "v" }, "<leader>ff", function() vscode("workbench.action.quickOpen") end, opts)
-- keymap({ "n", "v" }, "<leader>cp", function() vscode("workbench.action.showCommands") end, opts)
-- keymap({ "n", "v" }, "<leader>pr", function() vscode("code-runner.run") end, opts)
-- keymap({ "n", "v" }, "<leader>fd", function() vscode("editor.action.formatDocument") end, opts)

-- Harpoon (instalar extensión vscode-harpoon)
keymap({ "n", "v" }, "<leader>ha", function() vscode("vscode-harpoon.addEditor") end, opts)
keymap({ "n", "v" }, "<leader>ho", function() vscode("vscode-harpoon.editorQuickPick") end, opts)
keymap({ "n", "v" }, "<leader>he", function() vscode("vscode-harpoon.editEditors") end, opts)

for i = 1, 9 do
  keymap({ "n", "v" }, "<leader>h" .. i, function()
    vscode("vscode-harpoon.gotoEditor" .. i)
  end, opts)
end
