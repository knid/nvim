local keymap = vim.keymap
local status, telescope = pcall(require, 'telescope.builtin')
if (not status) then return end

local default_opts = { noremap = true, silent = true }

-- Custom Commands
keymap.set('n', '<leader>r', ':Run<CR>')
keymap.set('n', '<leader>es', ':KnidConfig<CR>')
-- Terminal
keymap.set('n', '<leader>c', ':KnidTerminal<CR>')
keymap.set('n', '<leader>es', ':KnidConfig<CR>')
-- NvimTree
keymap.set('n', '<leader>ef', ':Ex<CR>')
-- Telescope
keymap.set('n', '<leader>ff', telescope.find_files, {})
keymap.set('n', '<leader>fh', telescope.oldfiles, {})
keymap.set('n', '<leader>fb', ":Telescope file_browser<CR>", {})
keymap.set('n', '<leader>b', telescope.buffers, {})
--Terminal
keymap.set('n', '<C-t>', ':ToggleTerm<CR>')
keymap.set('n', '<C-t>2', ':ToggleTerm 2<CR>')
keymap.set('n', '<C-t>3', ':ToggleTerm 3<CR>')
keymap.set('n', '<C-t>4', ':ToggleTerm 4<CR>')
keymap.set('n', '<C-t>5', ':ToggleTerm 5<CR>')
--Other stuff
keymap.set('n', '<S-u>', ':m-2<CR>')
keymap.set('n', '<S-d>', ':m+<CR>')


keymap.set("v", "p", '"_dP', default_opts)
keymap.set("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap.set("n", "<S-l>", ":bnext<CR>", default_opts)
keymap.set("x", "K", ":move '<-2<CR>gv-gv", default_opts)
keymap.set("x", "J", ":move '>+1<CR>gv-gv", default_opts)
keymap.set("n", "<S-Right>", ":vertical resize +1<CR>", default_opts)
keymap.set("n", "<S-Left>", ":vertical resize -1<CR>", default_opts)
keymap.set("n", "<S-Up>", ":resize -1<CR>", default_opts)
keymap.set("n", "<S-Down>", ":resize +1<CR>", default_opts)
