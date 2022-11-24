local keymap = vim.keymap
local status, telescope = pcall(require, 'telescope.builtin')
if (not status) then return end
-- NvimTree
keymap.set('n', '<leader>ff', ':NvimTreeFocus<CR>')
keymap.set('n', '<leader>fc', ':NvimTreeClose<CR>')
-- Telescope
keymap.set('n', '<leader>tf', telescope.find_files, {})
keymap.set('n', '<leader>fh', telescope.oldfiles, {})
keymap.set('n', '<leader>b', telescope.buffers, {})
--Prettier
keymap.set('n', '<leader>p', ':Prettier<CR>')
