-- vim.lsp.set_log_level("debug")

local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  --formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua function() vim.lsp.buf.format{async=true} end]]
    --vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

-- tsserver
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
  --  cmd = { "typescript-language-server", "--stdio" }
  ,
}

-- Lua
nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- get the language server to recognize the vim global
        globals = { 'vim' }
      },
      workspace = {
        -- make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      }
    }
  }
}

--[[
-- ccls (nonfunctional)
nvim_lsp.ccls.setup {
  on_attach = on_attach,
  filetypes = { "c", "cpp", "objc", "objcpp" },
  cmd = { "ccls" },
  -- cmd = { "cmd.exe", "/C", "ccls" }, -- this only work in pwsh
  init_options = {
    cache = {
      directory = ".ccls-cache";
    }
  }
}
--]]

nvim_lsp.clangd.setup {
  on_attach = on_attach,
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" }
}


-- pyright
nvim_lsp.pyright.setup {
  on_attach = on_attach,
  filetypes = { "python" },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true
      }
    }
  }
}

-- cssls (css language server), html and json (both using the same dependencies, vscode-langservers-extracted)
nvim_lsp.cssls.setup {
  on_attach = on_attach,
  filetypes = { "css", "scss", "less" },
}
nvim_lsp.html.setup {
  on_attach = on_attach,
  filetypes = { "html" },
  init_options = {
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
      css = true,
      javascript = true
    },
    provideFormatter = true
  }
}
nvim_lsp.jsonls.setup {
  on_attach = on_attach,
  filetypes = { "json", "jsonc" }
}

-- Arduino-language-server [Not configured yet!]
nvim_lsp.arduino_language_server.setup {
  on_attach = on_attach,
  filetypes = { "arduino" },
  -- these must be changed and varied between arduino boards. see the official page for more detail
  cmd = {
    "arduino-language-server",
    "-cli-config", "$HOME/AppData/Local/Arduino15/arduino-cli.yaml", -- config file. change if using different config
    "-fqbn", "arduino:avr:uno", -- fqbn types. see the official page for more detail
    "-cli", "arduino-cli",
    "-clangd", "clangd"
  }
}

-- LaTeX LSP
nvim_lsp.texlab.setup {
  on_attach = on_attach,
  filetypes = { "tex", "plaintex", "bib" },
  settings = {
    texlab = {
      auxDirectory = ".",
      bibtexFormatter = "texlab",
      build = {
        args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
        executable = "latexmk",
        forwardSearchAfter = false,
        onSave = false
      },
      chktex = {
        onEdit = false,
        onOpenAndSave = false
      },
      diagnosticsDelay = 300,
      formatterLineLength = 80,
      forwardSearch = {
        args = {}
      },
      latexFormatter = "latexindent",
      latexindent = {
        modifyLineBreaks = false
      }
    }
  }
}
