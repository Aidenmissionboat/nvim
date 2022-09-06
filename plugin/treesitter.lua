local ts_configs = require("nvim-treesitter.configs")
ts_configs.setup {
  ensure_installed = { "c_sharp", "ruby","cpp", "c", "lua", "rust", "python", "go" },
  context_commentstring = {
      enable = true,
      enable_autocmd = false,
  },
  highlight = { enable = true, use_languagetree = true },
  indent = { enable = false },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      node_incremental = 'grn',
      scope_incremental = 'grc',
      node_decremental = 'grm',
    },
  },
  refactor = {
    --smart_rename = { enable = true, keymaps = { smart_rename = 'grr' } }, -- Rename provided by LSP
    highlight_definitions = { enable = true },
    -- highlight_current_scope = { enable = true }
  },
  textsubjects = {
    enable = true,
    keymaps = {
      ['.'] = 'textsubjects-smart',
      [';'] = 'textsubjects-container-outer',
      ['i;'] = 'textsubjects-container-inner',
    },
  },
  endwise = { enable = true },
}
