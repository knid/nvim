require('knid.commands.install')
require('knid.commands.update')
require('knid.commands.terminal')
require('knid.commands.run')

vim.api.nvim_create_user_command(
  'KnidConfig',
  function(opts)
    vim.cmd('e ~/.config/nvim/lua/knid/config.lua')
  end,
  {}
)

vim.api.nvim_create_user_command(
  'KnidInstall',
  function(opts)
    Install()
  end,
  {}
)

vim.api.nvim_create_user_command(
  'KnidUpdate',
  function(opts)
    Update()
  end,
  {}
)

vim.api.nvim_create_user_command(
  'KnidTerminal',
  function(opts)
    Terminal()
  end,
  {}
)

vim.api.nvim_create_user_command(
  'Runner',
  function(opts)
    Run()
  end,
  {}
)
