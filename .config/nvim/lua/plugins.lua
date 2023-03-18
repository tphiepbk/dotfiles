local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[ packadd packer.nvim ]]

packer.startup(function(use)
    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Common utilites
    use 'nvim-lua/plenary.nvim'

    -- Autosave
    use 'Pocco81/auto-save.nvim'

    -- Comment utilities
    use 'numToStr/Comment.nvim'

    -- Themes
    use 'folke/tokyonight.nvim'

    -- Decoration
    use 'nvim-tree/nvim-web-devicons'
    use 'norcalli/nvim-colorizer.lua'
    use "lukas-reineke/indent-blankline.nvim"

    -- Tree
    use 'nvim-tree/nvim-tree.lua'

    -- File finder
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'

    -- Toolbars
    use 'nvim-lualine/lualine.nvim'
    use 'tiagovla/scope.nvim'
    use {'akinsho/bufferline.nvim', tag = "v3.*"}

    -- Git
    use 'lewis6991/gitsigns.nvim'
    use 'dinhhuy258/git.nvim'

    -- Language parser
    use 'nvim-treesitter/nvim-treesitter'

    -- Autoclose
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    -- Intellisense
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'onsails/lspkind-nvim' -- vscode-like pictograms
    use 'glepnir/lspsaga.nvim'
    use 'L3MON4D3/LuaSnip'

end)
