local status, ntree = pcall(require, "nvim-tree")
if (not status) then return end

ntree.setup()
