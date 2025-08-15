return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your options go here
  },
  keys = {
    {
      "<leader>q",
      function()
        vim.cmd("qa!")
      end,
      desc = "Quit All",
    },
  },
}