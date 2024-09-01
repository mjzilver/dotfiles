return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 35,
				relativenumber = true,
			},
			-- works better with tmux
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			update_focused_file = {
				enable = true,
			},
			-- do not hide ignored files
			git = {
				ignore = false,
			},
		})

		-- set keymaps
		vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", {
			desc = "Toggle file explorer",
		})
		vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", {
			desc = "Toggle file explorer on current file",
		})
		vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", {
			desc = "Collapse file explorer",
		})
		vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", {
			desc = "Refresh file explorer",
		})
	end,
}
