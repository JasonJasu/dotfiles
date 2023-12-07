require("base")
require("highlight")
require("maps")
require("plugins")

local has = function(x)
  return vim.fn.has(x) == 1
end

-- archaei :  make a case where if windows then ooga booga syncing system clipboard and vim register
if has "win32" then
  vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
end
