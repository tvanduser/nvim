require("turner.lazy")
require("turner")
print("Hello Turner!")
require("plugins.lsp")

-- Treesitter setup
require("lazy").setup({
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = {
          "c", "lua", "vim", "vimdoc", "query",
          "elixir", "heex", "javascript", "html", "java",
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

  -- Harpoon setup
  {
    "harpoon",
    dir = "~/personal/harpoon",
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()

    end,
  },
})

