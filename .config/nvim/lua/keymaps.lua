local opts = {noremap = true, silent = true}

-- Telescope
vim.api.nvim_set_keymap('n', '<Leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', opts)

-- NvimTree
--vim.api.nvim_set_keymap('n', '<Leader>oe', ':NvimTreeToggle', opts)
vim.api.nvim_set_keymap('n', '<Leader>oe', '<cmd>lua require("nvim-tree.api").tree.toggle()<CR>', opts)
