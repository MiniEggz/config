vim.keymap.set('n', '<leader>pv', ':Ex<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>"', [[:%s/'/"/g<CR>]], { noremap = true, silent = true })
