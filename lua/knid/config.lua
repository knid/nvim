Config = {
  leader = " ",
  -- theme = "ayu-mirage",
  theme = 'habamax', -- Available Themes: onedark, aquarium, ayu-light, ayu-mirage, ayu-dark, everforest, nightfox, dayfox, dawnfox, duskfox, terafox, carbonfox
  transparent = true,
  background = 'dark',
  mkdp_theme = 'dark',
  mkdp_browser = 'min',
  lualine = {
    theme = 'horizon'
  },
  lsp = {
    auto_format = true,
    colors = {
      error = '#db4b4b',
      warning = '#e0af68',
      information = '#0db9d7',
      hint = '#10B981'
    },
  },
  treesitter = {
  },
}

return Config
