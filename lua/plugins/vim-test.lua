return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux"
  },
  config = function()
    vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", {})
    vim.keymap.set("n", "<leader>T", ":TestFile<CR>", {})
    vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", {})
    vim.keymap.set("n", "<leader>l", ":TestLast<CR>", {})
    vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", {})
    vim.g['test#custom_strategies'] = {
      gnome_terminal = function(cmd)
        vim.fn.jobstart('gnome-terminal -- bash -c "' .. cmd .. '; read -p \'Press Enter to close terminal...\' "')
      end
    }
    vim.g['test#strategy'] = 'gnome_terminal'
  end,
}
