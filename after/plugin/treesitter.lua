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
    "cpp",
    "python",
    "go",
    "markdown",
    "markdown_inline"
  },
  autotag = {
    enable = true,
    filetypes = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "tsx", "jsx" },
  },
}
