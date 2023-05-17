-- define common options
local opts = {
	noremap = true,
	silent = true,
}

-- ####### Normal Mode #########--

-- Hint: see `:h vim.map.set()`
-- Better window navigation
-- mj, ml, mj, mk 分别切换到左，右，下，上窗口
vim.keymap.set("n", "mh", "<C-w>h", opts)
vim.keymap.set("n", "mj", "<C-w>j", opts)
vim.keymap.set("n", "mk", "<C-w>k", opts)
vim.keymap.set("n", "ml", "<C-w>l", opts)

-- Resize with arrows
-- delta: 2 lines
-- Ctl + h,j,k,l 分别从四个方向调整窗口大小
vim.keymap.set("n", "<C-h>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-l>", ":vertical resize +2<CR>", opts)
vim.keymap.set("n", "<C-j>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-k>", ":resize +2<CR>", opts)

-- Split multi-window
-- sph,spl,spj,spk 分别从四个方向分裂窗口
vim.keymap.set("n", "spl", ":set splitright<CR>:vsplit<CR>", opts)
vim.keymap.set("n", "sph", ":set nosplitright<CR>:vsplit<CR>", opts)
vim.keymap.set("n", "spj", ":set splitbelow<CR>:split<CR>", opts)
vim.keymap.set("n", "spk", ":set nosplitbelow<CR>:split<CR>", opts)

-- Set tab
-- te 打开一个tab并编辑某个文件, tc 关闭一个tab,
-- tp 来到上一个tab, tn 来到下一个tab, tf 来到第一个tab, tl 来到最后一个tab
-- tmp 与前一个tab换位，tmn 与下一个tab换位
-- to 仅保留一个tab
vim.keymap.set("n", "te", ":tabedit<CR>", opts)
vim.keymap.set("n", "tc", ":tabclose<CR>", opts)
vim.keymap.set("n", "tp", ":tabprevious<CR>", opts)
vim.keymap.set("n", "tn", ":tabnext<CR>", opts)
vim.keymap.set("n", "tf", ":tabfirst<CR>", opts)
vim.keymap.set("n", "tl", ":tablast<CR>", opts)
vim.keymap.set("n", "tmp", ":-tabmove<CR>", opts)
vim.keymap.set("n", "tmn", ":+tabmove<CR>", opts)
vim.keymap.set("n", "to", ":tabonly<CR>", opts)

-- ####### Visual Mode #########--
-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set("v", "<", "<gv<CR>", opts)
vim.keymap.set("v", ">", ">gv<CR>", opts)
