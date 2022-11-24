local status, ap = pcall(require, 'nvim-autopairs')
if (not status) then return end
local status, apcmp = pcall(require, 'nvim-autopairs.completion.cmp')
if (not status) then return end
local status, cmp = pcall(require, 'cmp')
if (not status) then return end

ap.setup {}

cmp.event:on(
  'confirm_done',
  apcmp.on_confirm_done()
)
