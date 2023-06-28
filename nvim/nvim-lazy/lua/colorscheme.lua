-- list all color schemes here
--#### tokyonight ####--
tokyonight = {
	"folke/tokyonight.nvim",
	lazy = false,		-- make sure we load this during startup if it is your main colorscheme
	priority = 1000,	-- make sure to load this before all the other start plugins
	config = function()
		local status, tokyo_night = pcall(require, "tokyonight")
		if not status then
			vim.notify("not found colorscheme tokyonight!")
			return
		end
		vim.g.tokyonight_transparent = true
		vim.g.tokyonight_transparent_sidebar = true
		-- load the colorcheme
		vim.cmd([[colorscheme tokyonight]])		-- or use `vim.cmd.colorscheme("tokyonight")`
	end
}

catppuccin = {
	"catppuccin/nvim",
	lazy = false,
	priority = 1000,
	version = "*",
    name = "catppuccin",
	config = function()
		local status, catpuccin = pcall(require, "catppuccin")
		if not status then
			vim.notify("not found colorscheme catpuccin")
			return
		end
		vim.cmd([[colorscheme catppuccin]])
	end
}

-- pick which colorscheme to be use here
--return tokyonight
return catppuccin
