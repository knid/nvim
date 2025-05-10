---@diagnostic disable: redefined-local
local status, lspconfig = pcall(require, 'lspconfig')
if (not status) then return end
local status, mason = pcall(require, 'mason')
if (not status) then return end
local status, masonlsp = pcall(require, "mason-lspconfig")
if (not status) then return end
local status, cmp = pcall(require, 'cmp')
if (not status) then return end


mason.setup()
masonlsp.setup({
    ensure_installed = {
        'pyright',
        'clangd'
    }
})

