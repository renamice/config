return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "python", "rust", "go", "dart" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  

            require'nvim-treesitter.configs'.setup {
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<Tab>",
                        node_incremental = "<Tab>",
                        scope_incremental = false,
                        node_decremental = "<Backspace>",
                    },
                },
            }
        })
    end
}
