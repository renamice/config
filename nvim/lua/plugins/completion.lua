return {
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets",
      --    "xzbdmw/colorful-menu.nvim",
    },

    version = "*",
    build = 'cargo build --release',

    --@module "blink.cmp"
    --@type blink.cmp.Config
    config = function()
      require("blink.cmp").setup({

        keymap = { preset = "default" },

        appearance = {
          -- use_nvim_cmp_as_default = true,
          nerd_font_variant = "mono"
        },

        signature = { enabled = false },

        completion = {
          ghost_text = {
            enabled = true,
          },

          documentation = {
            auto_show = true,
            auto_show_delay_ms = 50,
            update_delay_ms = 50,
          },

          menu = {
            enabled = true,
            min_width = 15,
            max_height = 10,
            border = "none",
            winblend = 0,
            winhighlight =
            'Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None',

            draw = {
              align_to = "label",
              padding = 1,
              gap = 1,
              treesitter = { "lsp" },
              columns = {
                { "kind_icon",   "kind",              gap = 1 },
                { "label",       "label_description", gap = 1 },
                { "source_name", },
              },
            },
          },
        },

        -- Default list of enabled providers defined so that you can extend it
        -- elsewhere in your config, without redefining it, due to `opts_extend`
        sources = {
          default = { "lsp", "path", "snippets", "buffer" },
        },
      })
    end,
    -- opts_extend = { "sources.default" },
  },
}
