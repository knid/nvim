local o = vim.opt
local g = vim.g
local wo = vim.wo

local config = require('knid.config')

g.mapleader = config.leader

-- g.loaded_netrw = 1
-- g.loaded_netrwPlugin = 1
-- g.netrw_list_cmd = 'ssh USEPORT HOSTNAME ls'

vim.scriptencoding = 'utf-8'

wo.number = true

o.encoding = 'utf-8'
o.fileencoding = 'utf-8'

o.number = false
o.relativenumber = false
o.foldcolumn = "2"
o.title = true
o.autoindent = true
o.smartindent = true
o.hlsearch = true
o.backup = false
o.showcmd = true
o.cmdheight = 1
o.laststatus = 2
o.expandtab = true
o.scrolloff = 10
o.shell = '/bin/bash'
o.backupskip = { '/tmp/*', '/private/tmp/*' }
o.inccommand = 'split'
o.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
o.smarttab = true
o.breakindent = true
o.shiftwidth = 4
o.tabstop = 4
o.wrap = false -- No Wrap lines
o.backspace = { 'start', 'eol', 'indent' }
o.path:append { '**' } -- Finding files - Search down into subfolders
o.wildignore:append { '*/node_modules/*' }
o.clipboard:append { 'unnamedplus' }
o.fillchars = { eob = ' ' }
o.undofile = true

