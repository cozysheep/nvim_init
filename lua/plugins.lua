local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    -- Your plugins go here

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- mason | mason-lspconfig | nvim-lspconfig
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    use {
        "onsails/lspkind-nvim",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
    }
    use { "windwp/nvim-autopairs", "windwp/nvim-ts-autotag" }

    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

    use { "L3MON4D3/LuaSnip" }

    use { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim", "nvim-telescope/telescope-file-browser.nvim",
        "kyazdani42/nvim-web-devicons" }

    use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

    use { "norcalli/nvim-colorizer.lua" }

    use { "glepnir/lspsaga.nvim" }

    use { "Shatur/neovim-ayu" }

    use { "jose-elias-alvarez/null-ls.nvim" }

    use { "tpope/vim-commentary" }

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }


end)
