return {
  {
    'akinsho/flutter-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim',
    },
    config = function()
      require("flutter-tools").setup()
      vim.keymap.set("n", "<leader>lg", "<cmd> FlutterLogToggle <cr>")
      vim.keymap.set("n", "<leader>fl", require("telescope").extensions.flutter.commands,
        { desc = 'Open command Flutter list' })

      local dap = require("dap")
      dap.configurations.dart = {
        {
          type = "dart",
          request = "launch",
          name = "Launch dart",
          dartSdkPath = "/opt/flutter/bin/cache/dart-sdk/bin/dart", -- ensure this is correct
          flutterSdkPath = "/opt/flutter/bin/flutter",              -- ensure this is correct
          program = "${workspaceFolder}/lib/main.dart",             -- ensure this is correct
          cwd = "${workspaceFolder}",
        },
        {
          type = "flutter",
          request = "launch",
          name = "Launch flutter",
          dartSdkPath = "/opt/flutter/bin/cache/dart-sdk/bin/dart", -- ensure this is correct
          flutterSdkPath = "/opt/flutter/bin/flutter",              -- ensure this is correct
          program = "${workspaceFolder}/lib/main.dart",             -- ensure this is correct
          cwd = "${workspaceFolder}",
        }
      }
      -- Dart CLI adapter (recommended)
      dap.adapters.dart = {
        type = 'executable',
        command = 'dart', -- if you're using fvm, you'll need to provide the full path to dart (dart.exe for windows users), or you could prepend the fvm command
        args = { 'debug_adapter' },
        -- windows users will need to set 'detached' to false
        options = {
          detached = false,
        }
      }
      dap.adapters.flutter = {
        type = 'executable',
        command = 'flutter', -- if you're using fvm, you'll need to provide the full path to flutter (flutter.bat for windows users), or you could prepend the fvm command
        args = { 'debug_adapter' },
        -- windows users will need to set 'detached' to false
        options = {
          detached = false,
        }
      }
    end,
  },
  { "dart-lang/dart-vim-plugin", },
}
