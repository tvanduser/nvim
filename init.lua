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
          "elixir", "heex", "javascript", "html", "java", "python", "go"
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

      local map = vim.keymap.set
      map("n", "<leader>A", function() harpoon:list():prepend() end)
      map("n", "<leader>a", function() harpoon:list():add() end)
      map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

      map("n", "<C-h>", function() harpoon:list():select(1) end)
      map("n", "<C-t>", function() harpoon:list():select(2) end)
      map("n", "<C-n>", function() harpoon:list():select(3) end)
      map("n", "<C-s>", function() harpoon:list():select(4) end)

      map("n", "<leader><C-h>", function() harpoon:list():replace_at(1) end)
      map("n", "<leader><C-t>", function() harpoon:list():replace_at(2) end)
      map("n", "<leader><C-n>", function() harpoon:list():replace_at(3) end)
      map("n", "<leader><C-s>", function() harpoon:list():replace_at(4) end)
    end,
  },
})

