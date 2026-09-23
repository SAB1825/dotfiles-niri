local lualine = require("lualine")
lualine.setup({
	options = {
		component_separators = "",
	},
	tabline = {
		lualine_a = {
			{
				"buffers",
				show_filename_only = true,
				hide_filename_extension = false,
				show_modified_status = true,
				sort = "activity",
				max_length = vim.o.columns * 2 / 3,
				symbols = {
					modified = " ●",
					alternate_file = "",
					directory_separator = "/",
				},
			},
		},
		lualine_z = { "tabs" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_c = { { "filename", path = 4 } },
		lualine_b = { "branch", "diff" },
		lualine_x = {
			{
				"filetype",
				cond = function()
					return vim.fn.reg_recording() == ""
				end,
			},
			{
				function()
					return "Recording @" .. vim.fn.reg_recording()
				end,
				cond = function()
					return vim.fn.reg_recording() ~= ""
				end,
				padding = 1,
			},
		},
		lualine_y = {
			{
				"diagnostics",
				sources = { "nvim_workspace_diagnostic" },
			},
		},
		lualine_z = {},
	},
	extensions = { "quickfix", "oil" },
})
