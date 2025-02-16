-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Center cursor
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Fuck this
vim.keymap.set("n", "Q", "<nop>")


-- Harpoon
local harpoon = require('harpoon')

harpoon:setup()

vim.keymap.set('n', "<leader>a", function() harpoon:list():add() end)
vim.keymap.set('n', "<C-q>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set('n', "<S-q>", function() harpoon:list():select(1) end)
vim.keymap.set('n', "<S-w>", function() harpoon:list():select(2) end)
vim.keymap.set('n', "<S-e>", function() harpoon:list():select(3) end)
vim.keymap.set('n', "<S-r>", function() harpoon:list():select(4) end)
vim.keymap.set('n', "<S-t>", function() harpoon:list():select(5) end)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])


vim.keymap.set('n', '<leader>b', ":NvimTreeToggle<CR>")
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<C-p>', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').git_files, { desc = 'Find git files' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set("n", "<C-t>", "<cmd>silent !tmux new-window ~/dev/config/tmux-sessionizer.sh<CR>")


vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<S-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<S-j>", "<cmd>cprev<CR>zz")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>tt", function()
    require("trouble").toggle({ mode = 'diagnostics' })
end)

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
