
return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("flutter-tools").setup({})
  end,
  keys = {
    {
      "<leader>fr",
      function()
        vim.fn.jobstart('gnome-terminal -- bash -c "flutter run; read -p \"Press Enter to close terminal...\" "')
      end,
      desc = "Flutter Run",
    },
  },
}
