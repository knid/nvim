---@diagnostic disable: redefined-local
local status, lspconfig = pcall(require, 'lspconfig')
if (not status) then return end
local status, cmplsp = pcall(require, 'cmp_nvim_lsp')
if (not status) then return end
local status, mason = pcall(require, 'mason')
if (not status) then return end
local status, masonlsp = pcall(require, "mason-lspconfig")
if (not status) then return end

-- Mappings.
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local config = require('knid.config')
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    if config.lsp.auto_format then
        if client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = vim.api.nvim_create_augroup("Format", { clear = true }),
                buffer = bufnr,
                callback = function() vim.lsp.buf.format() end
            })
        end
    end
end

local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}

local capabilities = cmplsp.default_capabilities()

mason.setup()
masonlsp.setup({
    ensure_installed = {
        'pyright',
        -- 'tsserver',
        -- 'clangd'
        -- rust_analyzer
    }
})

masonlsp.setup_handlers(
    {
        function(server)
            config = {
                on_attach = on_attach,
                flags = lsp_flags,
                capabilities = capabilities
            }
            lspconfig[server].setup(config)
        end,
    }
)

local status, rt = pcall(require, 'rust-tools')
if (not status) then return end

rt.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}
