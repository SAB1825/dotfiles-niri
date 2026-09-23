-- auto save the buffers
local excluded_filetypes = {
	"gitcommit",
	"oil",
	"TelescopePrompt",
	"prompt",
	"toggleterm",
}

local function save_condition(buf)
	if vim.tbl_contains(excluded_filetypes, vim.fn.getbufvar(buf, "&filetype")) then
		return false
	end
	if vim.fn.getbufvar(buf, "&buftype") ~= "" then
		return false
	end
	return true
end

require("auto-save").setup({
	condition = save_condition,
	trigger_events = {
		immediate_save = { "BufLeave", "FocusLost", "VimSuspend" },
		defer_save = { "InsertLeave", "TextChanged" },
		cancel_deferred_save = { "InsertEnter" },
	},
})

vim.keymap.set("n", "<leader>as", "<cmd>ASToggle<CR>", { desc = "Toggle auto save" })