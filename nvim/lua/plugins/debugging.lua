return {
  "mfussenegger/nvim-dap",
  event = "VeryLazy",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "theHamsta/nvim-dap-virtual-text",
  },
  opts = {
    handlers = {},
  },
  config = function()
    local dap = require "dap"
    local dapui = require "dapui"

    require("dapui").setup()
    require("nvim-dap-virtual-text").setup()

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

    dap.adapters.codelldb = {
      type = "server",
      port = "${port}",
      executable = {
        command = os.getenv "HOME" .. "/" .. ".local/share/nvim/mason/bin/codelldb",
        args = { "--port", "${port}" },
      },
    }

    dap.configurations.cpp = {
      {
        type = "codelldb",
        request = "launch",
        program = function()
          -- Compile and return exec name
          local filetype = vim.bo.filetype
          local filename = vim.fn.expand "%"
          local basename = vim.fn.expand "%:t:r"
          local function makefile_exists()
            return vim.fn.filereadable "Makefile" == 1 or vim.fn.filereadable "makefile" == 1
          end
          if makefile_exists() then
            os.execute "make debug"
          else
            if filetype == "c" then
              os.execute(string.format("gcc -g -o %s %s", basename, filename)) -- remove this -lcs50, i can't find a way to execute make debug
            else
              os.execute(string.format("g++ -g -o %s %s", basename, filename))
            end
          end
          return basename
        end,
        args = function()
          local argv = {}
          arg = vim.fn.input(string.format "argv: ")
          for a in string.gmatch(arg, "%S+") do
            table.insert(argv, a)
          end
          vim.cmd 'echo ""'
          return argv
        end,
        cwd = "${workspaceFolder}",
        -- Uncomment if you want to stop at main
        -- stopAtEntry = true,
        MIMode = "gdb",
        miDebuggerPath = "/usr/bin/gdb",
        setupCommands = {
          {
            text = "-enable-pretty-printing",
            description = "enable pretty printing",
            ignoreFailures = false,
          },
        },
      },
    }
    dap.configurations.c = dap.configurations.cpp

    dap.configurations.rust = {
      {
        type = "codelldb",
        request = "launch",
        -- This is where cargo outputs the executable
        program = function()
          os.execute "cargo build &> /dev/null"
          return "target/debug/${workspaceFolderBasename}"
        end,
        args = function()
          local argv = {}
          arg = vim.fn.input(string.format "argv: ")
          for a in string.gmatch(arg, "%S+") do
            table.insert(argv, a)
          end
          return argv
        end,
        cwd = "${workspaceFolder}",
        -- Uncomment if you want to stop at main
        -- stopOnEntry = true,
        MIMode = "gdb",
        miDebuggerPath = "/usr/bin/gdb",
        setupCommands = {
          {
            text = "-enable-pretty-printing",
            description = "enable pretty printing",
            ignoreFailures = false,
          },
        },
      },
    }

    vim.keymap.set("n", "<leader>dc", dap.clear_breakpoints, {})
    vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<leader>dr", dap.continue, {})
    vim.keymap.set("n", "<leader>dn", dap.step_over, {})
    vim.keymap.set("n", "<leader>di", dap.step_into, {})
    vim.keymap.set("n", "<leader>do", dap.step_out, {})
    vim.keymap.set("n", "<leader>db", dap.step_back, {})
    vim.keymap.set("n", "<leader>dp", dap.pause, {})
    vim.keymap.set("n", "<leader>ds", dap.close, {})
  end,
}
