
--remaps for global movement around vim
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- remaps for telescope fuzzy finder 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })


-- Add keybindings for diagnostics
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.keymap.set('n', '<space>c', ':lclose<CR>', { noremap = true, silent = true, desc = 'Close diagnostics list' })

--keybindings for selecting autocomplete items
--<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
--['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
--['<C-y>'] = cmp.mapping.confirm({ select = true }),
--["<C-Space>"] = cmp.mapping.complete(),


--keybinds for working with the terminal
vim.keymap.set('n', '<leader>st', ':vsplit | terminal<CR>', {noremap = true, silent = true}) --opens up a split terminal using SpaceST "split termial ST"
vim.keymap.set('n', '<leader>bt', ':botright split | resize 10 | terminal<CR>', { noremap = true, silent = true })

--remap for working with splits
vim.keymap.set('n', '<leader>sp', ':vs<CR>'); --creates a duplicate of the current window and splits the screen in half
vim.keymap.set('n', '<leader>wh', '<C-w>h') --moves to the left window
vim.keymap.set('n', '<leader>wl', '<C-w>l') --moves to the right window (doens't work for some reason)
vim.keymap.set('n', '<leader>wk', '<C-w>k') --moves to the above window
vim.keymap.set('n', '<leader>wj', '<C-w>j') --moves to the below window

--remap for harpoon

local harpoon = require("harpoon")
local map = vim.keymap.set
map("n", "<leader>A", function() harpoon:list():prepend() end)
map("n", "<leader>a", function() harpoon:list():add() end)
map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end) --opens up the menu for harpoon 

map("n", "<leader>1", function() harpoon:list():select(1) end)
map("n", "<leader>2", function() harpoon:list():select(2) end)
map("n", "<leader>3", function() harpoon:list():select(3) end)
map("n", "<leader>4", function() harpoon:list():select(4) end)
map("n", "<leader>5", function() harpoon:list():select(5) end)

map("n", "<leader><C-1>", function() harpoon:list():replace_at(1) end)
map("n", "<leader><C-2>", function() harpoon:list():replace_at(2) end)
map("n", "<leader><C-3>", function() harpoon:list():replace_at(3) end)
map("n", "<leader><C-4>", function() harpoon:list():replace_at(4) end)
map("n", "<leader><C-5>", function() harpoon:list():replace_at(5) end)

--remaps for going back after doing something like gd using lsp
vim.keymap.set("n", "<leader>b", "<C-o>", { desc = "Go back from LSP jump" })

