local plugin_list = {
  'wbthomason/packer.nvim',
  'lewis6991/impatient.nvim',
  ---------------
  -- Highlight --
  ---------------
  'nvim-treesitter/nvim-treesitter',
  -------------------
  -- File Explorer --
  -------------------
  -- { 'preservim/nerdtree', { 'nvim-tree/nvim-web-devicons', }, },
  -- { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons', }, },
  --------
  -- UI --
  --------
  { 'kyazdani42/nvim-web-devicons' },
  -- { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } },
  { "junegunn/goyo.vim" },
  -- 'glepnir/dashboard-nvim',
  -- "lukas-reineke/indent-blankline.nvim",
  ------------
  -- Themes --
  ------------
  'knid/ayu-vim',
  'EdenEast/nightfox.nvim',
  'frenzyexists/aquarium-vim',
  'ful1e5/onedark.nvim',
  'sainnhe/everforest',
  ------------------
  -- Fuzzy Finder --
  ------------------
  { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } },
  {"nvim-telescope/telescope-file-browser.nvim", requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }},
  ---------
  -- Git --
  ---------
  -- 'tpope/vim-fugitive',
  -- 'lewis6991/gitsigns.nvim',
  ------------------
  -- Code Helpers --
  ------------------
  'windwp/nvim-autopairs',
  'numToStr/Comment.nvim',
  -----------
  -- Utils --
  -----------
  { 'folke/trouble.nvim', requires = 'kyazdani42/nvim-web-devicons' },
  -- { 'akinsho/toggleterm.nvim' },
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
  -- { "glepnir/lspsaga.nvim", branch = "main" },
  "williamboman/mason.nvim",
  'williamboman/mason-lspconfig.nvim',
  'jose-elias-alvarez/null-ls.nvim',
  ---------
  -- -- CMP --
  -- ---------
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  -----------
  -- -- Snips --
  -- -----------
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",
  -- -------------------------------------------
  -- Language & Framework Specific Plugins --
  -------------------------------------------
  -- Rust
  -- 'simrat39/rust-tools.nvim',
  -- HTML
  'mattn/emmet-vim',
  -- Typescript
  { 'windwp/nvim-ts-autotag', after = { 'nvim-treesitter' } },
  -- JavaScript
  -- 'yuezk/vim-js',
  -- JSX
  'maxmellon/vim-jsx-pretty',
  -- LaTeX 
  'lervag/vimtex',
  -- Session Management
  'tpope/vim-obsession',
}

return plugin_list
