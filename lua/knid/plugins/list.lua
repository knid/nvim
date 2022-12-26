local plugin_list = {
  'wbthomason/packer.nvim',
  ---------------
  -- Highlight --
  ---------------
  'nvim-treesitter/nvim-treesitter',
  -------------------
  -- File Explorer --
  -------------------
  { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons', }, },
  --------
  -- UI --
  --------
  { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } },
  'glepnir/dashboard-nvim',
  "lukas-reineke/indent-blankline.nvim",
  ------------
  -- Themes --
  ------------
  'ayu-theme/ayu-vim',
  'EdenEast/nightfox.nvim',
  'frenzyexists/aquarium-vim',
  'ful1e5/onedark.nvim',
  'sainnhe/everforest',
  ------------------
  -- Fuzzy Finder --
  ------------------
  { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } },
  ---------
  -- Git --
  ---------
  'tpope/vim-fugitive',
  'lewis6991/gitsigns.nvim',
  ------------------
  -- Code Helpers --
  ------------------
  'windwp/nvim-autopairs',
  'numToStr/Comment.nvim',
  'MunifTanjim/prettier.nvim',
  -----------
  -- Utils --
  -----------
  { "akinsho/toggleterm.nvim", tag = '*' },
  { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" },
  --------------
  -- Markdown --
  --------------
  { "iamcco/markdown-preview.nvim", run = function() vim.fn["mkdp#util#install"]() end, },
  ---------
  -- LSP --
  ---------
  'neovim/nvim-lspconfig',
  'onsails/lspkind.nvim',
  'folke/lsp-colors.nvim',
  { "glepnir/lspsaga.nvim", branch = "main" },
  "williamboman/mason.nvim",
  'williamboman/mason-lspconfig.nvim',
  'jose-elias-alvarez/null-ls.nvim',
  ---------
  -- CMP --
  ---------
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  -----------
  -- Snips --
  -----------
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",
  -------------------------------------------
  -- Language & Framework Specific Plugins --
  -------------------------------------------
  -- Rust
  'simrat39/rust-tools.nvim',
  -- HTML
  'mattn/emmet-vim',
  -- Typescript
  { 'windwp/nvim-ts-autotag', after = { 'nvim-treesitter/nvim-treesitter' } },
  -- JavaScript
  'yuezk/vim-js',
  -- JSX
  'maxmellon/vim-jsx-pretty',
}

return plugin_list
