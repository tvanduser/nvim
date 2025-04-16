-- Pick your preferred theme here
local colorscheme = "catppuccin" -- options: "gruvbox", "tokyonight", "onedark", etc.

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
}

