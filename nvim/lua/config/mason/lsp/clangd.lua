local opt = {
	cmd = { "clangd", "--offset-encoding=utf-8" },
	root_dir = function()
		return vim.fn.getcwd()
	end
}

return opt
