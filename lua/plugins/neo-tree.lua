return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
				mappings = {
					["<cr>"] = "open_tabnew",  -- Open in new tab by default
					["o"] = "open_tabnew",     -- Alternative key for new tab
					["<2-LeftMouse>"] = "open_tabnew",  -- Double click opens in new tab
					["s"] = "open",           -- Split horizontally in current tab
					["v"] = "open_vsplit",    -- Split vertically in current tab
					["t"] = "open_tabnew",    -- Explicit new tab
					["w"] = "open_with_window_picker",
				},
			},
			filesystem = {
				follow_current_file = {
					enabled = true,
					leave_dirs_open = true,
				},
				hijack_netrw_behavior = "open_current",
			},
		})
		
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle left<CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
	end,
}
