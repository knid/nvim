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
end

local t = { 'nightfox', 'dayfox', 'dawnfox', 'duskfox', 'terafox', 'carbonfox' }
if utils.table.has_value(t, config.theme) then
  local status, _ = pcall(require, 'nightfox')
  if (not status) then return end
  if config.transparent then
    options = {
      options = {
        transparent = true,
      }
    }
  end
  -- theme.setup(options)
  vim.cmd('colorscheme ' .. config.theme)
end

if config.theme == 'aquarium' then
  if config.transparent then
    vim.g.aqua_transparency = 1
  end
  vim.cmd('colorscheme aquarium')
end

if config.theme == 'everforest' or config.theme == 'everforest-dark' or config.theme == 'everforest-soft' then
  local bg = utils.string.split(config.theme, '-')[2]
  if bg then
    vim.g.everforest_background = bg
  end
  if config.transparent then
    vim.g.everforest_transparent_background = 1
  end
  vim.cmd('colorscheme everforest')
end

if config.theme == 'ayu-light' or config.theme == 'ayu-dark' or config.theme == 'ayu-mirage' then
  local bg = utils.string.split(config.theme, '-')[2]
  vim.g.ayucolor = 'mirage'
  vim.cmd('colorscheme ayu')
end


if config.theme == 'gruvbox' then
  if config.transparent then
    vim.g.gruvbox_transparent_bg = 1
  end
  vim.cmd('colorscheme gruvbox')
end

if config.theme == 'one_monokai' then
  if config.transparent then
    vim.g.gruvbox_transparent_bg = 1
  end
  vim.cmd('colorscheme one_monokai')
end

vim.cmd('colorscheme ' .. config.theme )
if config.transparent then
    vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
end
if config.customBG ~= '' then
    vim.cmd('hi Normal guibg=' .. config.customBG .. 'ctermbg=' .. config.customBG)
end


