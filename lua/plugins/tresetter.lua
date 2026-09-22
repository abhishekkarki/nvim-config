return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',

  config = function()
    local status_ok, configs = pcall(require, "nvim-treesitter.configs")
    if not status_ok then
      return
    end
    configs.setup({
      ensure_installed = { "lua", "go", "gomod", "gosum", "python" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
