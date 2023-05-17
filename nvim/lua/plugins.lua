-- template visit
-- https://github.com/jinzhongjia/neovim-config/tree/lsp/lua/plugin-config

-- 设置插件管理器lazy的路径
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- 若未发现lazy则安装它
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git", "clone"< "--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
-- 加载插件管理器lazy
vim.opt.rtp:prepend(lazypath)

-- lazy的配置
local lazy_config = {
	checker = {
		-- automatically check for plugin update
		enable = true,
		concurrency = nil,
		notify = false,
		frequency = 3600,
	},
}

-- lazy 需要加载的其他插件
require("lazy").setup({
	-- color scheme		配色表 （选择配色表请修改colorscheme.lua)
	{
		require("colorscheme")
	},

	-- nvim-notify 通知框
	{
		"rcarriga/nvim-notify",
		version = "*",
		config = function()
			vim.notiify = require"notify"
		end
	},

	-- #### other plugins / 其他要加载的插件 ### ---
    -- nvim-tree	显示树状目录（必备）
    {
		enabled = true,
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
        "nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("config.nvim-tree")
		end
    },

	-- bufferline 顶部图标
	{
		"akinsho/bufferline.nvim",
		version = "*",
		config = function()
			require("config.bufferline")
		end
	},

	-- mason 轻松安装和管理 LSP 服务器、DAP 服务器、linter 和格式化程序（推荐）
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",    -- mason extension for LSP
			"neovim/nvim-lspconfig",                -- LSP 语言服务协议配置
			"jose-elias-alvarez/null-ls.nvim",      -- linters and formatters
            --mfussenegger/nvim-dap                 -- DAP 调试
		},
		event = "VeryLazy",
		build = ":MasonUpdate", -- :MasonUpdate updates registry contents
		config = function()
			require("config.mason")
		end
	},

	-- pantran		翻译
	--{
	--	"potamides/pantran.nvim",
	--	version = "*",
	--	config = function()
	--		require("config.pantran.nvim")
	--	end
	--},
	
	-- coq_nvim  代码补全 （推荐）
	{
		"ms-jpq/coq_nvim",
		version = "*",
		branch = "coq",
        name = "coq",
		dir = "/home/change/.local/share/nvim/lazy/coq",
		config = function()
			require("config.coq_nvim")
		end
	},

	-- lualine			底部状态栏 （必备）
	{
		"nvim-lualine/lualine.nvim",
		version = "*",
		branch = "master",
		config = function()
			require("config.lualine")
		end
	},

	-- nvim-treesitter
	--{
	--	"nvim-treesitter/nvim-treesitter",
	--	version = "*",
	--	config = function()
	--		require("config.nvim-treesitter")
	--	end
	--},
	---- nvim-ts-rainbow2
	--{
	--	"HiPhish/nvim-ts-rainbow2",
	--	dependencites = {
	--		"nvim-treesitter/nvim-treesitter",
	--	},
	--	config = function()
	--		--require("ts-rainbow")
	--		require("nvim-treesitter").setup{
	--			rainbow = {
	--				enable = true,
	--				query = "rainbow-parents",
	--				strategy = require('ts-rainbow').strategy.global,
	--			}
	--		}
	--	end
	--},
	
	-- alpha-nvim dashboard界面（推荐）
	{
		"goolord/alpha-nvim",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			--require'alpha'.setup(require'alpha.themes.startify'.config)
			require"config.alpha"
		end
	},

	-- dressing			更改vim ui界面
	{
		"stevearc/dressing.nvim",
		version = "*",
		config = function()
			require"config.dressing"
		end
	},

	-- nvim-ufo  代码折叠（推荐）
	{
		"kevinhwang91/nvim-ufo",
		dependencies = {'kevinhwang91/promise-async'},
		config = function()
			require("config.nvim-ufo")
		end
	},

	-- indent-blankline.nvim		缩进指南（必备）
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("indent_blankline").setup{}
		end
	},

}, lazy_config)
