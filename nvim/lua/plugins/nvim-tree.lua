-- file explorer
require("nvim-tree").setup({
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeFindFileToggle<CR>", {
	desc = "Reveal file in explorer",
})