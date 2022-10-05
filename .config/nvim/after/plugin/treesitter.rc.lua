local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = {
      'php'
    }
  },
  indent = {
    enable = false,
    disable = {},
  },
  autotag = {
    enable = true,
  }
}
