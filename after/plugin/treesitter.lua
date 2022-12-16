local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
 highlight = {
   enable = true,
 },
 indent = {
   enable = true,
   disable = {},
 },
 ensure_installed = {
   "javascript",
   "tsx",
   "toml",
   "fish",
   "php",
   "json",
   "yaml",
   "swift",
   "css",
   "html",
   "lua",
   "rust"
 },
 autotag = {
   enable = true,
 },
}
