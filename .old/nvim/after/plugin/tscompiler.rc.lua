local status, tscompiler = pcall(require, 'nvim-treesitter.install')
if (not status) then return end

-- since windows dont have native compilers we have to configure the compilers ourselves.
-- man i hate windows
-- some shits still broken too
-- goofy ahh os :skull:
-- tscompiler.compilers = { "gcc", "clang", "g++", "cc", "zig" }
