
return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "nvim-neotest/nvim-nio",
      {
        "rcarriga/nvim-dap-ui",
        config = function()
          local dapui = require("dapui")
          dapui.setup()

          vim.keymap.set("n", "<leader>de", function() dapui.toggle() end, { desc = "DAP UI" })

          local dap, dapui = require("dap"), require("dapui")
          dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
          end
          dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
          end
          dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
          end
        end
      }
    },
    config = function ()
      local dap = require("dap")
      dap.adapters.dart = {
        type = "executable",
        command = "dart",
        args = { "debug_adapter" },
      }

      dap.configurations.dart = {
        {
          type = "dart",
          request = "launch",
          name = "Launch flutter app",
          dartSdkPath = "/usr/lib/dart/",
          program = "${workspaceFolder}/lib/main.dart",
          cwd = "${workspaceFolder}",
        },
      }

      vim.keymap.set("n", "<leader>dc", function() require("dap").continue() end)
      vim.keymap.set("n", "<leader>do", function() require("dap").step_over() end)
      vim.keymap.set("n", "<leader>di", function() require("dap").step_into() end)
      vim.keymap.set("n", "<leader>du", function() require("dap").step_out() end)
      vim.keymap.set("n", "<leader>db", function() require("dap").toggle_breakpoint() end)
      vim.keymap.set("n", "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end)
      vim.keymap.set("n", "<leader>dl", function() require("dap").run_last() end)
    end
  }
}
