return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>rn",
      function()
        vim.fn.jobstart('gnome-terminal -- bash -c "npm run android; read -p \"Press Enter to close terminal...\" "')
      end,
      desc = "React Native Run",
    },
  },
}
