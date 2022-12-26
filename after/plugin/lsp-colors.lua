local status, lc = pcall(require, 'lsp-colors')
if (not status) then return end

local config = require('knid.config')

lc.setup({
  Error = config.lsp.colors.error,
  Warning = config.lsp.colors.error,
  Information = config.lsp.colors.information,
  Hint = config.lsp.colors.hint
})
