return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "folke/lazydev.nvim",       -- This gives us a better config for lua when editing nvim configurations
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
    config = function()
        vim.lsp.enable('lua_ls')
        vim.lsp.enable('clangd')
        vim.lsp.config('clangd', {
            cmd = {
                "clangd",
                "--function-arg-placeholders=0",
            },
            on_new_config = function(new_config, new_cwd)
                local status, cmake = pcall(require, "cmake-tools")
                if status then
                    cmake.clangd_on_new_config(new_config)
                end
            end,
        })
        vim.lsp.enable('neocmake')
        vim.diagnostic.config({
            virtual_lines = true,
            underline = true,
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "",
                    [vim.diagnostic.severity.WARN] = "",
                    [vim.diagnostic.severity.INFO] = "",
                    [vim.diagnostic.severity.HINT] = "󰌶",
                }
            }
        })
    end,
}
