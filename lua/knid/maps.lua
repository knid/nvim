local keymap = vim.keymap
local status, telescope = pcall(require, 'telescope.builtin')
if (not status) then return end

require("knid.commands")

-- Custom Commands
keymap.set('n', '<leader>r', Run)

-- NvimTree
keymap.set('n', '<leader>ff', ':NvimTreeFocus<CR>')
keymap.set('n', '<leader>fc', ':NvimTreeClose<CR>')
-- Telescope
keymap.set('n', '<leader>tf', telescope.find_files, {})
keymap.set('n', '<leader>fh', telescope.oldfiles, {})
keymap.set('n', '<leader>b', telescope.buffers, {})
--Prettier
keymap.set('n', '<leader>p', ':Prettier<CR>')
--Terminal
keymap.set('n', '<leader>rt', ':Terminal<CR>')
--Other stuff
keymap.set('n', '<S-u>', ':m-2<CR>')
keymap.set('n', '<S-d>', ':m+<CR>')


