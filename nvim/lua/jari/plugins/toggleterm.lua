return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 10,
			start_in_insert = true,
			direction = "horizontal",
		})

		-- Key mappings for custom actions
		local Terminal = require("toggleterm.terminal").Terminal

		local default_term = Terminal:new({ hidden = true })
		vim.keymap.set("n", "<leader>co", function()
			default_term:toggle()
		end, { desc = "Open default terminal" })

		vim.keymap.set("n", "<leader>cx", function()
			default_term:toggle()
		end, { desc = "Close terminal" })

		local horizontal_term = Terminal:new({ direction = "horizontal", hidden = true })
		vim.keymap.set("n", "<leader>ch", function()
			horizontal_term:toggle()
		end, { desc = "Open horizontal terminal" })

		local vertical_term = Terminal:new({ direction = "vertical", hidden = true })
		vim.keymap.set("n", "<leader>cv", function()
			vertical_term:toggle()
		end, { desc = "Open vertical terminal" })
	end,
}
