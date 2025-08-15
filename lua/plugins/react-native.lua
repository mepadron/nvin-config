return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>rn",
      function()
        local current_dir = vim.fn.expand('%:p:h')
        -- Usar el comando xdg-open para abrir la terminal predeterminada
        local cmd = string.format('gnome-terminal -- bash -c "cd %s && npm run android; exec bash"', vim.fn.shellescape(current_dir))
        vim.fn.jobstart(cmd, { detach = true })
      end,
      desc = "React Native Run",
    },
  },
}
