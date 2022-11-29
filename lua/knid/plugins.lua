local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed!")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
     -- Highlight
    use 'nvim-treesitter/nvim-treesitter'
    -- File explorer
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {'nvim-tree/nvim-web-devicons'}
    }
    -- Fuzy finder
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
   -- UI
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'ayu-theme/ayu-vim'
    use "EdenEast/nightfox.nvim" -- Theme
    -- Git stuff
    use 'lewis6991/gitsigns.nvim'
    use 'glepnir/dashboard-nvim'

    -- LSP, LSPServers, Autocmp
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'jose-elias-alvarez/null-ls.nvim'
    use { "williamboman/mason.nvim" } -- Install LSPServers
    use 'williamboman/mason-lspconfig.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    -- Snips
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use "rafamadriz/friendly-snippets"

    -- Other stuff
    use "windwp/nvim-autopairs"
    use {
        'windwp/nvim-ts-autotag',
         after = {'nvim-treesitter/nvim-treesitter'}
    }
    use {
        'prettier/vim-prettier',
        run = 'yarn install --frozen-lockfile --production'
    }
    use 'numToStr/Comment.nvim'
    use 'simrat39/rust-tools.nvim'
end)
