require('knid.commands.utils')

function Update()
  local config = ReadFile('~/.config/nvim/knid/config.lua')
  os.execute('cd ~/.config/nvim && git pull')
  WriteFile('~/.config/nvim/lua/knid/config.lua', config)
end
