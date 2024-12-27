vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
local opts = { noremap = true, silent = true }

vim.keymap.set({ 'n', 'v' }, '<Space>', '', { silent = true })
vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("n", "<Esc>", "<Esc>:noh<CR>", opts)
-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Center cursor
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Fuck this
vim.keymap.set("n", "Q", "<nop>")


vim.keymap.set({ "n", "v" }, "<leader>t",
    "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
-- vim.keymap.set({ "n", "v" }, "<leader>b", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
-- vim.keymap.set({ "n", "v" }, "<leader>d", "<cmd>lua require('vscode').action('editor.action.showHover')<CR>")
-- vim.keymap.set({ "n", "v" }, "<leader>a", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
vim.keymap.set({ "n", "v" }, "<leader>sp", "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>")
vim.keymap.set({ "n", "v" }, "<leader>cn", "<cmd>lua require('vscode').action('notifications.clearAll')<CR>")
vim.keymap.set({ "n", "v" }, "<leader>ff", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
vim.keymap.set({ "n", "v" }, "<leader>cp", "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")
vim.keymap.set({ "n", "v" }, "<leader>pr", "<cmd>lua require('vscode').action('code-runner.run')<CR>")
vim.keymap.set({ "n", "v" }, "<leader>fd", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")

-- harpoon keymaps
vim.keymap.set({ "n", "v" }, "<leader>a", "<cmd>lua require('vscode').action('vscode-harpoon.addEditor')<CR>")
vim.keymap.set({ "n", "v" }, "<C-q>", "<cmd>lua require('vscode').action('vscode-harpoon.editorQuickPick')<CR>")
vim.keymap.set({ "n", "v" }, "<C-he>", "<cmd>lua require('vscode').action('vscode-harpoon.editEditors')<CR>")
vim.keymap.set({ "n", "v" }, "<S-1>", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor1')<CR>")
vim.keymap.set({ "n", "v" }, "<S-2>", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor2')<CR>")
vim.keymap.set({ "n", "v" }, "<S-3>", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor3')<CR>")
vim.keymap.set({ "n", "v" }, "<S-4>", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor4')<CR>")
vim.keymap.set({ "n", "v" }, "<S-5>", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor5')<CR>")
vim.keymap.set({ "n", "v" }, "<S-6>", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor6')<CR>")
vim.keymap.set({ "n", "v" }, "<S-7>", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor7')<CR>")
vim.keymap.set({ "n", "v" }, "<S-8>", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor8')<CR>")
vim.keymap.set({ "n", "v" }, "<S-9>", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor9')<CR>")

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', opts)
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', opts)
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
vim.keymap.set("v", "p", '"_dP', opts)

vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>tt", function()
    require("trouble").toggle({ mode = 'diagnostics' })
end)

-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

