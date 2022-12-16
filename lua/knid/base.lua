local o = vim.opt
local g = vim.g
local wo = vim.wo


g.mapleader = " "

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

vim.scriptencoding = 'utf-8'
o.encoding = 'utf-8'
o.fileencoding = 'utf-8'

wo.number = true

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
o.shell = 'fish'
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
o.cursorline = true
o.termguicolors = true
o.winblend = 0
o.wildoptions = 'pum'
o.pumblend = 5
o.background = 'dark'
o.clipboard:append { 'unnamedplus' }

vim.api.nvim_create_autocmd({'VimEnter'}, {command = "syntax on"})
