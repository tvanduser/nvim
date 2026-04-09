return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
    },

    config = function()
        -- Mason: install LSP servers
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "pyright" },
        })

        -- Capabilities for autocomplete
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        -- Keymaps when LSP attaches
        local on_attach = function(_, bufnr)
            local opts = { noremap = true, silent = true, buffer = bufnr }
            vim.keymap.set('n', 'gd',        vim.lsp.buf.definition,    opts)
            vim.keymap.set('n', 'K',         vim.lsp.buf.hover,         opts)
            vim.keymap.set('n', 'gr',        vim.lsp.buf.references,    opts)
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename,       opts)
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action,  opts)
        end

        -- Set up pyright
        require("lspconfig").pyright.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- Autocomplete
        local cmp = require("cmp")
        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ["<Tab>"]   = cmp.mapping.select_next_item(),
                ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                ["<CR>"]    = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = {
                { name = "nvim_lsp" },
                { name = "buffer" },
            },
        })

        -- Diagnostics
        vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            underline = true,
            update_in_insert = false,
        })
    end,
}
