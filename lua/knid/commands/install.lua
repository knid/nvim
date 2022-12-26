function Install()
  local status, packer = pcall(require, 'packer')
  if (not status) then return end

  packer.on_complete = function()
    print('KnidNvim installed!')
  end
  packer.install()
end
