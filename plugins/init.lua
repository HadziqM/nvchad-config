local M = {}


-- auto tag
M.autotag = {
  config = function()
      require('nvim-ts-autotag').setup{
        filetypes = {'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact'         ,'svelte', 'vue', 'tsx', 'jsx', 'rescript',
        'xml',
        'php',
        'markdown',
        'glimmer','handlebars','hbs'},
        skip_tags = {
        'area', 'base', 'br', 'col', 'command', 'embed', 'hr', 'img', 'slot',
        'input', 'keygen', 'link', 'meta', 'param', 'source', 'track', 'wbr','menuitem'}
      }
    end
}

-- Discord presence
M.discord = {
    config = function()
    require("presence"):setup({
    auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
    neovim_image_text   = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
    main_image          = "file",                   -- Main image display (either "neovim" or "file")
    client_id           = "793271441293967371",       -- Use your own Discord application client id (not recommended)
    log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
    debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    enable_line_number  = true,                      -- Displays the current line number instead of the current project
    blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
    buttons             = true,                       -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
    file_assets         = {},                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
    show_time           = true,                       -- Show the timer

    -- Rich Presence text options
    editing_text        = "Dueling with %s",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    file_explorer_text  = "Haunting %s",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    git_commit_text     = "Committing changes",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    reading_text        = "Observing %s's Move",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    workspace_text      = "Working on %s",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
    line_number_text    = "KO'ed %s lines out of %s",        -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
    })
    end
}

-- Lsp config
M.lspconf = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
}


-- Luasnip
-- M.snip = {
--   config = function()
--       require("luasnip").filetype_extend("dart", {"flutter"})
--   end
-- }


-- Flutter tools
M.fluttertl = {
  config = function()
    require("flutter-tools").setup {
      ui = {
        border = "rounded",
        notification_style = "native",
      },
      decorations = {
        statusline = {
          app_version = false,
          device = true,
        },
      },
      widget_guides = {
        enabled = true,
      },
      closing_tags = {
        highlight = "ErrorMsg",
        prefix = "//",
        enabled = true,
      },
      lsp = {
        color = {
          enabled = false,
          background = false,
          foreground = false,
          virtual_text = true,
          virtual_text_str = "■",
        },
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          enableSnippets = true,
        },
      },
      debugger = {
        enabled = true,
        run_via_dap = false,
      },
      -- dev_log = {
      --   enabled = true,
      --   open_cmd = "tabedit", -- command to use to open the log buffer
      -- },
    }
  end,
}


-- Dap
M.dap = {
  config = function()
    local dap = require("dap")
    dap.adapters.dart = {
      type = "executable",
      command = "dart",
      args = { "debug_adapter" },
    }
    dap.configurations.dart = {
      {
        type = "dart",
        request = "launch",
        name = "Launch Dart Program",
        program = "${file}",
        cwd = "${workspaceFolder}",
      },
    }
  end,
}
return{
  -- ["L3MON4D3/LuaSnip"] = M.snip,
  ["godlygeek/tabular"] = {},
  ["dart-lang/dart-vim-plugin"] = {},
  ["AlessandroYorba/Alduin"]={},
  ["p00f/nvim-ts-rainbow"]={},
  ["windwp/nvim-ts-autotag"]=M.autotag,
  ["andweeb/presence.nvim"]=M.discord,
  ["simrat39/rust-tools.nvim"]=false,
  ["neovim/nvim-lspconfig"] = M.lspconf,
  ['akinsho/flutter-tools.nvim'] = {
    config = function()
      require("flutter-tools").setup{} -- use defaults
    end
  },
  ["mfussenegger/nvim-dap"] = M.dap
}

