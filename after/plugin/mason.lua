local status, mason = pcall(require, 'mason')
if (not status) then return end
local status, lspconfig = pcall(require, "mason-lspconfig")
if (not status) then return end

mason.setup()

lspconfig.setup({
    ensure_installed = {"pyright", "tsserver", "clangd"}
})
