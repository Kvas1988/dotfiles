require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "cpp", "c", "lua", "java", "python" },
  highlight = {
    enable = true,
    -- disable = ( "dart" )
    },
    indent = {
      enable = true
    }
}
