local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  sync_install = false,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = { 'python' },
  },
  ensure_installed = {
    "javascript",
    "json",
    "yaml",
    "swift",
    "css",
    "html",
    "lua",
    "rust",
    "c",
    "python",
    "go"
  },
  autotag = {
    enable = true,
    filetypes = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "tsx", "jsx" },
  },
}
