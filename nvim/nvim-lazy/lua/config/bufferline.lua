local status, buffer_line = pcall(require, "bufferline")
if not status then
	vim.notify("plugin bufferline not found")
	return
end

buffer_line.setup()
