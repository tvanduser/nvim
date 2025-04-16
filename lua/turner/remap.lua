
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
vim.keymap.set('n', '<leader>wl', '<C-w>h')
vim.keymap.set('n', '<leader>wr', '<C-w>l')
