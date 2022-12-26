function Terminal()
  local api = vim.api
  api.nvim_command('botright split new')
  api.nvim_win_set_height(0, 15)
  api.nvim_call_function("termopen", { "$SHELL" })
end
