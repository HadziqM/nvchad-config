local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "arduino",
    "astro",
    "cmake",
    "cpp",
    "csv",
    "gdscript",
    "go",
    "htmldjango",
    "json",
    "python",
    "rust",
    "solidity",
    "sql",
    "svelte",
    "toml",
    "vue",
    "xml",
    "yaml",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
  autotag = {
    enable_rename = true,
    enable_close = true,
    enable_close_on_slash = true,
    filetypes = {
    'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
    'xml',
    'php',
    'markdown',
    'astro', 'glimmer', 'handlebars', 'hbs','rust'}
  }
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",


    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "htmx-lsp", --experimental new lsp
    "typescript-language-server",
    "svelte-language-server",
    "astro-language-server",
    "vetur-vls", --vue lsp
    "tailwindcss-language-server",
    "deno",
    "prettier",
    -- for djinja or django templating
    "djlint",
    "python-lsp-server",

    --data/content general
    "json-lsp",
    "markdownlint",
    "marksman",
    "sqlls", --golang version of sqlls
    "sqlfmt",
    "yaml-language-server",
    "yamlfmt",
    "yamllint",

    --rust
    "rust-analyzer",
    "taplo", --for toml lsp

    --solidity
    "solidity",

    -- c/cpp stuff
    "clangd",
    "clang-format",
    "cmake-language-server",

    --go
    "gopls",
    "goimports",

    --godot
    "gdtoolkit",

    --proxy or container
    "docker-compose-language-service",
    "dockerfile-language-server",
    "nginx-language-server",

    --arduino
    "arduino-language-server",
  },
}

M.lsp = {
  -- empty table mean default setup on custom.config.lspconfig
  -- rust-analyzer lsp configured before this on custom.plugins on simrat/rusttool config

  htmx = {},
  svelte = {},
  astro = {},
  vuels = {},
  jsonls = {},
  yamlls = {},
  marksman = {},
  sqlls = {},
  solidity = {},
  gdscript = {},
  pylsp = {},
  clangd = {},
  cmake = {},
  gopls = {},
  denols = {},
  nginx_language_server = {},
  arduino_language_server= {},
  docker_compose_language_service = {},
  lua_ls = {},
  cssls = {
    filetypes = { "css", "scss", "less", "html"},
  },
  tsserver = {
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"},
  },
  html = {
      init_options = {
      configurationSection = { "html", "css", "javascript" },
      embeddedLanguages = {
        css = true,
        javascript = true
      },
      provideFormatter = true
    }
  },
  tailwindcss = {
    filetypes=
    { "aspnetcorerazor", "astro", "astro-markdown", "blade", "clojure", "django-html", "htmldjango", "edge", "eelixir", "elixir", "ejs", "erb", "eruby", "gohtml", "gohtmltmpl", "haml", "handlebars", "hbs", "html", "html-eex", "heex", "jade", "leaf", "liquid", "markdown", "mdx", "mustache", "njk", "nunjucks", "php", "razor", "slim", "twig", "css", "less", "postcss", "sass", "scss", "stylus", "sugarss", "javascript", "javascriptreact", "reason", "rescript", "typescript", "typescriptreact", "vue", "svelte","rust" },
    init_options = {
      userLanguages = {
        rust = "html",
      }
    }
  }
}
-- git support in nvimtree
M.nvimtree = {

  -- use icon in git status but doesnt hide ignore from file tree
  git = {
    enable = true,
    ignore = false
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}


return M
