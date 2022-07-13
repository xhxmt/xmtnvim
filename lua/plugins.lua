local packer = require("packer")
packer.startup({
    function(use)
        -- Packer 可以管理自己本身
        use 'wbthomason/packer.nvim'
        -- 你的插件列表...
        -- colortheme
        -- OceanicNext
        use("mhartington/oceanic-next")
        -- gruvbox
        use({
            "ellisonleao/gruvbox.nvim",
            requires = { "rktjmp/lush.nvim" },
        })
        -- zephyr
        -- use("glepnir/zephyr-nvim")
        -- nord
        use("shaunsingh/nord.nvim")
        -- onedark
        use("ful1e5/onedark.nvim")
        -- nightfox
        use("EdenEast/nightfox.nvim")
        use("folke/tokyonight.nvim")
        use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
        use("arkav/lualine-lsp-progress")
        use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
        use("glepnir/dashboard-nvim")
        use("ahmedkhalf/project.nvim")
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
        use {
            "williamboman/nvim-lsp-installer",
            "neovim/nvim-lspconfig",
        }
        -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- snippet 引擎
        use("hrsh7th/vim-vsnip")
        -- 补全源
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
        -- use("github/copilot.vim")
        use {'tzachar/cmp-tabnine', after = "nvim-cmp", run='powershell ./install.ps1', requires = 'hrsh7th/nvim-cmp',disable=true}
        -- 常见编程语言代码段
        use("windwp/nvim-autopairs") 
        use("rafamadriz/friendly-snippets")
        use("onsails/lspkind-nvim")
        use("lukas-reineke/indent-blankline.nvim")
        use("tami5/lspsaga.nvim" ) -- 新增
    end,
    config={
        max_jobs=16,
        display={
            open_fn=function()
                return require("packer.util").float({border = "single"})
            end,
        },
    }
})
