return {
  "folke/zen-mode.nvim",
  event = "VeryLazy",
  opts = {
    window = {
      backdrop = 0.95,
      width = 150,
      height = 0.9,
      options = {
        signcolumn = "no",
        relativenumber = false,
        number = false,
        cursorcolumn = false,
        cursorline = false,
        list = false,
      },
    },
    plugins = {
      options = {
        enabled = true,
        ruler = false,
        showcmd = false,
        laststatus = 0,
      },
      twilight = { enabled = true },
      tmux = { enabled = false },
    },
  },
  config = function()
    require("zen-mode").setup({
      vim.keymap.set({ "n", "i", "v" }, "<leader>zm", "<cmd> ZenMode <cr>"),
      on_open = function(_)
        vim.fn.system([[tmux set status off]])
        vim.fn.system(
          [[tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z]])
      end,
      on_close = function(_)
        vim.fn.system([[tmux set status on]])
        vim.fn.system(
          [[tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z]])
      end
    })
  end,
}
