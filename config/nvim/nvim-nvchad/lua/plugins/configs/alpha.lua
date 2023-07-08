local status, alpha = pcall(require, "alpha")
if not status then
	vim.notify("plugin alpha-nvim not found")
	return
end

--alpha.setup(require'alpha.themes.startify'.config)
alpha.setup(require'alpha.themes.dashboard'.config)
