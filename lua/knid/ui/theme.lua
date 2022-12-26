local config = require('knid.config')
local _, theme = pcall(require, config.theme)

local utils = require('knid.utils')


local options = {}

if config.theme == 'onedark' then
  local status, _ = pcall(require, config.theme)
  if (not status) then return end
  if config.transparent then
    options = {
      transparent = true,
      transparent_sidebar = true
    }
  end
  theme.setup(options)
  return
end


t = {'nightfox', 'dayfox', 'dawnfox', 'duskfox', 'terafox', 'carbonfox'}
if utils.table.has_value(t, config.theme) then
  local status, _ = pcall(require, config.theme)
  if (not status) then return end
  if config.transparent then
    options = {
      options = {
        transparent = true,
      }
    }
  end
  theme.setup(options)
  vim.cmd('colorscheme ' .. config.theme)
  return
end

if config.theme == 'aquarium' then
  if config.transparent then
    vim.g.aqua_transparency = 1
  end
  vim.cmd('colorscheme aquarium')
  return
end

if config.theme == 'everforest' or config.theme == 'everforest-dark' or config.theme == 'everforest.soft' then
  local bg = utils.string.split(config.theme, '-')[2]
  if bg then
    vim.g.everforest_background = bg
  end
  if config.transparent then
    vim.g.everforest_transparent_background = 2
  end
  vim.cmd('colorscheme everforest')
  return
end
