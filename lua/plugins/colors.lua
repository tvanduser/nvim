-- Pick your preferred theme here
local colorscheme = "everforest" -- options: "gruvbox", "tokyonight", "onedark", "catppuccin", "nord", "kanagawa", "rose-pine", "everforest", "nightfox", "oxocarbon"

return {
    -- Catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        cond = function() return colorscheme == "catppuccin" end,
        config = function()
            vim.cmd.colorscheme("catppuccin")
        end,
    },

    -- Gruvbox
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        cond = function() return colorscheme == "gruvbox" end,
        config = function()
            vim.cmd.colorscheme("gruvbox")
        end,
    },

    -- TokyoNight
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        cond = function() return colorscheme == "tokyonight" end,
        config = function()
            vim.cmd.colorscheme("tokyonight")
        end,
    },
    -- OneDark
    {
        "navarasu/onedark.nvim",
        lazy = false,
        priority = 1000,
        cond = function() return colorscheme == "onedark" end,
        config = function()
            vim.cmd.colorscheme("onedark")
        end,
    },

    -- Nord
    {
        "shaunsingh/nord.nvim",
        lazy = false,
        priority = 1000,
        cond = function() return colorscheme == "nord" end,
        config = function()
            vim.cmd.colorscheme("nord")
        end,
    },

    -- Kanagawa
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        cond = function() return colorscheme == "kanagawa" end,
        config = function()
            vim.cmd.colorscheme("kanagawa")
        end,
    },

    -- Rose Pine
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
        cond = function() return colorscheme == "rose-pine" end,
        config = function()
            vim.cmd.colorscheme("rose-pine")
        end,
    },

    -- Everforest
    {
        "sainnhe/everforest",
        lazy = false,
        priority = 1000,
        cond = function() return colorscheme == "everforest" end,
        config = function()
            vim.cmd.colorscheme("everforest")
        end,
    },

    -- Nightfox
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        priority = 1000,
        cond = function() return colorscheme == "nightfox" end,
        config = function()
            vim.cmd.colorscheme("nightfox")
        end,
    },

    -- Oxocarbon
    {
        "nyoom-engineering/oxocarbon.nvim",
        lazy = false,
        priority = 1000,
        cond = function() return colorscheme == "oxocarbon" end,
        config = function()
            vim.cmd.colorscheme("oxocarbon")
        end,
    },
}

