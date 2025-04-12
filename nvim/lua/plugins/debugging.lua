return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local map = vim.keymap.set

      require("dapui").setup()
      require("dap").set_log_level('TRACE')


      map("n", "<leader>dc", dap.clear_breakpoints, {})
      map("n", "<Leader>dt", dap.toggle_breakpoint, {})
      map("n", "<leader>dr", dap.continue, {})
      map("n", "<leader>dn", dap.step_over, {})
      map("n", "<leader>di", dap.step_into, {})
      map("n", "<leader>do", dap.step_out, {})
      map("n", "<leader>db", dap.step_back, {})
      map("n", "<leader>dp", dap.pause, {})
      map("n", "<leader>dq", dap.close, {})
    end,

  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio"
    },
    config = function()
      local dap, dapui = require("dap"), require("dapui")

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end
  },
}
