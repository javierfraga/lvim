-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- silly buffer controls to match IDEs
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
vim.api.nvim_set_keymap('n', '<C-t>', ':enew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-t>', ':e#<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-w>', ':x<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-b>', ':bd<CR>', { noremap = true, silent = true })
-- Make new buffer splits
vim.api.nvim_set_keymap('n', '<C-S-h>', ':leftabove vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-j>', '<C-w>s<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-k>', ':aboveleft split<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-l>', '<C-w>v<CR>', { noremap = true, silent = true })
