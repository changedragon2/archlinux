-- Options are automatically loaded before lazy.nvim startup
-- Add any additional options here

-- Vim has a number of internal variables and switches which can be set to
-- achieve special effects.  These options come in three forms:
--	boolean		can only be on or off		
--	number		has a numeric value
--	string		has a string value

local g = vim.g

--Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.clipboard = "unnamedplus" -- use system clipboard 使用系统剪切板
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.mouse = "a" -- allow the mouse to be used in neovim 允许在neovim中使用鼠标

-- Tab
vim.opt.expandtab = true -- replace Tab with space 用等宽度的空格键替换Tab
vim.opt.tabstop = 4 -- number of visual spaces per Tab Tab键显示的宽度
vim.opt.shiftwidth = 4 -- insert 4 spaces on a Tab
vim.opt.softtabstop = -1 -- keep the same value with shiftwidth
vim.opt.smarttab = on
vim.opt.shiftround = on
--vim.opt.softtabstop = 4
--vim.opt.shiftwidth = 4

-- ###### UI ######---
-- UI config
vim.opt.number = true			-- show absolute number / 显示行号
vim.opt.numberwidth = 2
vim.opt.relativenumber = true 	-- show relative number / 显示相对行号
vim.opt.cursorline = true		-- show horizontal ruler / 显示水平标尺
vim.opt.cursorcolumn = true 	-- show show vertical ruler / 显示垂直标尺
vim.opt.signcolumn = "yes"
--vim.opt.ruler = false
vim.opt.splitbelow = true		-- open new vertical split bellow / 垂直方向打开窗口（水平分割）
vim.opt.splitright = true		-- open new horizontal split right / 水平方向打开窗口（垂直分割）
vim.opt.showmatch = true		-- highlight matching parenthesis
vim.opt.termguicolors = true	-- enable 24-bit rgb colors
vim.opt.laststatus = 3			-- set global statusline
vim.opt.foldmethod = 'indent'	-- enable folding (default 'foldmarker') / 代码折叠（手动）
vim.opt.fillchars = { eob = " " }
-- disable nvim intro
vim.opt.shortmess:append "sI"
-- search
vim.opt.incsearch = true		-- search as characters are entered / 在输入字符时搜索
vim.opt.hlsearch = true			-- highlight matches / 高亮显示匹配项
vim.opt.ignorecase = true		-- ignore case in searches by default / 搜索时忽略大小写
vim.opt.smartcase = true		-- make it case sensitive if an uppercase is entered / 当输入大写时区分大小写

-- syntax
vim.opt.syntax = on
vim.opt.title = true
vim.opt.showcmd = true
vim.opt.showmode = true
--vim.opt.showmode = false
vim.opt.autowrite = true		-- automatically write file if changed 自动保存文件
vim.updatetime = 300        -- interval for writing swap file to disk, also used by gitsigns
vim.opt.autoindent = true
vim.opt.smartindent = true		-- autoindent new lines
vim.opt.cindent = true
vim.opt.autochdir = true
vim.opt.timeoutlen = 400
-- 记录修改记录，以便重新打开文件可以撤销
vim.opt.undofile = true
vim.undodir = "~/.vim/undodir/" 
-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line 到每一行边界允许换行
vim.opt.whichwrap:append "<>[]hl"

g.mapleader = " "
