local o = vim.opt

local config = require('knid.config')

o.cursorline = true
o.termguicolors = true
o.winblend = 0
o.wildoptions = 'pum'
o.pumblend = 5
o.background = config.background


-- vim.api.nvim_create_autocmd({ 'BufEnter' }, { command = "set syntax=on" })
