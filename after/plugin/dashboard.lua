local home = os.getenv('HOME')
local status, db = pcall(require, 'dashboard')
if (not status) then return end

local LEADER = vim.g.mapleader
if LEADER == ' ' then
  LEADER = 'SPC'
end


db.default_banner = {
  '',
  '',
  '██╗  ██╗███╗  ██╗██╗██████╗ ',
  '██║ ██╔╝████╗ ██║██║██╔══██╗',
  '█████═╝ ██╔██╗██║██║██║  ██║',
  '██╔═██╗ ██║╚████║██║██║  ██║',
  '██║ ╚██╗██║ ╚███║██║██████╔╝',
  '╚═╝  ╚═╝╚═╝  ╚══╝╚═╝╚═════╝ ',
  '',
  '',
}
db.custom_header = nil
db.custom_footer = { '', 'Have fun with knid/nvim' }
db.custom_center = {
  { icon = '', desc = 'Sinan Kanidağlı | <github.com/knid>', action = '' },
  { icon = '', desc = '____', action = '' },
  { icon = '  ', desc = 'Recently opened files              ', shortcut = LEADER .. ' fh',
    action = 'Telescope oldfiles' },
  { icon = '  ', desc = 'File browser                       ', shortcut = LEADER .. ' ff', action = 'NvimTreeOpen' },
  { icon = '◎  ', desc = 'Find file                          ', shortcut = LEADER .. ' tf',
    action = 'Telescope find_files' },
  { icon = '  ', desc = 'Settings                           ', shortcut = LEADER .. ' es',
    action = 'KnidConfig' },
}
db.preview_file_Path = nil
db.preview_file_height = 0
db.preview_file_width = 0
db.preview_command = ''
db.image_width_pixel = 0
db.image_height_pixel = 0
db.hide_statusline = true
db.hide_tabline = true
db.hide_winbar = true
db.session_directory = ''
db.session_auto_save_on_exit = false
db.session_verbose = true
db.header_pad = 1
db.center_pad = 1
db.footer_pad = 1
db.disable_at_vimenter = false
