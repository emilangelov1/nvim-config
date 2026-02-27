return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = true,
        signs = true,
        update_in_insert = false,
        underline = true,
        severity_sort = true,
      },
      servers = {
        -- vtsls: handles Nx project references correctly (unlike ts_ls)
        -- LazyVim typescript extra enables vtsls; we configure it here
        vtsls = {
          settings = {
            typescript = {
              tsserver = {
                maxTsServerMemory = 32768, -- 32GB
              },
              inlayHints = {
                parameterNames = { enabled = "all" },
                parameterTypes = { enabled = true },
                variableTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                enumMemberValues = { enabled = true },
              },
              suggest = { autoImports = true },
              updateImportsOnFileMove = { enabled = "always" },
              preferences = {
                importModuleSpecifier = "project-relative",
              },
            },
            javascript = {
              inlayHints = {
                parameterNames = { enabled = "all" },
                parameterTypes = { enabled = true },
                variableTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                enumMemberValues = { enabled = true },
              },
              suggest = { autoImports = true },
              preferences = {
                importModuleSpecifier = "project-relative",
              },
            },
          },
        },
        -- ESLint LSP for linting
        eslint = {
          settings = {
            workingDirectories = { mode = "auto" },
          },
        },
        -- JSON LS for tsconfig.json and similar files
        jsonls = {},
        -- Lua for neovim config
        lua_ls = {
          settings = {
            Lua = {
              runtime = { version = "LuaJIT" },
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        },
        tailwindcss = {
          filetypes = {
            "html",
            "css",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
          },
        },
      },
    },
  },
  -- Mason for automatic LSP installation
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "vtsls",
        "eslint-lsp",
        "json-lsp",
        "lua-language-server",
        "tailwindcss-language-server",
      },
    },
  },
}


