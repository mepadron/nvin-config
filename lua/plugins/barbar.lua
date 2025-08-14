return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  init = function() 
    vim.g.barbar_auto_setup = false 
  end,
  config = function()
    require('barbar').setup({
      -- Enable/disable animations
      animation = true,
      
      -- Enable/disable auto-hiding the tab bar when there is only one buffer
      auto_hide = false,
      
      -- Enable/disable current/total tabpages indicator (top right corner)
      tabpages = true,
      
      -- Enables/disable clickable tabs
      clickable = true,
      
      -- Excludes buffers from the tabline
      exclude_ft = {'javascript'},
      exclude_name = {'package.json'},
      
      -- A buffer to this direction will be focused (if it exists) when closing the current buffer.
      focus_on_close = 'left',
      
      -- Hide inactive buffers and file extensions
      hide = {extensions = false, inactive = false},
      
      -- Disable highlighting alternate buffers
      highlight_alternate = false,
      
      -- Disable highlighting file icons in inactive buffers
      highlight_inactive_file_icons = false,
      
      -- Enable highlighting visible buffers
      highlight_visible = true,
      
      icons = {
        -- Configure the base icons on the bufferline
        buffer_index = false,
        buffer_number = false,
        button = '',
        -- Enables / disables diagnostic symbols
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
          [vim.diagnostic.severity.WARN] = {enabled = false},
          [vim.diagnostic.severity.INFO] = {enabled = false},
          [vim.diagnostic.severity.HINT] = {enabled = true},
        },
        gitsigns = {
          added = {enabled = true, icon = '+'},
          changed = {enabled = true, icon = '~'},
          deleted = {enabled = true, icon = '-'},
        },
        filetype = {
          -- Sets the icon's highlight group
          custom_colors = false,
          -- Requires `nvim-web-devicons`
          enabled = true,
        },
        separator = {left = '▎', right = ''},
        -- If true, add an additional separator at the end of the buffer list
        separator_at_end = true,
        -- Configure the icons on the bufferline based on the visibility of a buffer
        alternate = {filetype = {enabled = false}},
        current = {buffer_index = true},
        inactive = {button = '×'},
        visible = {modified = {buffer_number = false}},
      },
      
      -- If true, new buffers will be inserted at the start/end of the list
      insert_at_end = true,
      insert_at_start = false,
      
      -- Sets the maximum padding width with which to surround each tab
      maximum_padding = 1,
      
      -- Sets the minimum padding width with which to surround each tab
      minimum_padding = 1,
      
      -- Sets the maximum buffer name length
      maximum_length = 30,
      
      -- Sets the minimum buffer name length
      minimum_length = 0,
      
      -- If set, the letters for each buffer in buffer-pick mode will be assigned based on their name
      semantic_letters = true,
      
      -- Set the filetypes which barbar will offset itself for
      sidebar_filetypes = {
        -- Use the default values: {event = 'BufWinLeave', text = nil}
        NvimTree = true,
        -- Or, specify the text used for the offset:
        undotree = {text = 'undotree'},
        -- Or, specify the event which the sidebar executes when leaving:
        ['neo-tree'] = {event = 'BufWipeout'},
        -- Or, specify both
        Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
      },
      
      -- New buffer letters are assigned in this order
      letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
      
      -- If true, clicking on inactive buffer doesn't switch to it, but still shows clickable icons
      no_name_title = nil,
    })
    
    -- Key mappings for barbar
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    
    -- Move to previous/next tab
    map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
    
    -- Re-order to previous/next
    map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
    map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
    
    -- Goto buffer in position
    map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
    map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
    map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
    map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
    map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
    map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
    map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
    map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
    map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
    map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
    
    -- Pin/unpin buffer
    map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
    
    -- Close buffer
    map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
    map('n', '<leader>tc', '<Cmd>BufferClose<CR>', opts)
    
    -- Wipeout buffer (delete completely)
    map('n', '<A-w>', '<Cmd>BufferWipeout<CR>', opts)
    
    -- Close commands (close all but current, etc.)
    map('n', '<A-C-c>', '<Cmd>BufferCloseAllButCurrent<CR>', opts)
    map('n', '<A-C-p>', '<Cmd>BufferCloseAllButPinned<CR>', opts)
    map('n', '<A-C-l>', '<Cmd>BufferCloseBuffersLeft<CR>', opts)
    map('n', '<A-C-r>', '<Cmd>BufferCloseBuffersRight<CR>', opts)
    
    -- Magic buffer-picking mode
    map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
    
    -- Sort automatically by...
    map('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
    map('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
    map('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
    map('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
  end,
}
