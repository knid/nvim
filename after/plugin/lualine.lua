local status, ll = pcall(require, 'lualine')
if (not status) then return end

local config = require('knid.config')

ll.setup {
  options = {
    theme = config.lualine.theme,
  }
}
