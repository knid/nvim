local status, ls = pcall(require, 'luasnip.loaders.from_vscode')
if (not status) then return end

ls.lazy_load()
