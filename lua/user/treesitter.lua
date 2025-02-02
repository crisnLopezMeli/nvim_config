local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then return end

configs.setup({
	ensure_installed = {
    "dockerfile",
    "go",
    "gomod",
    "json",
    "lua",
    "make",
    "markdown",
    "markdown_inline",
    "python",
    "regex",
    "sql",
    "vim",
    "yaml",
  }, -- one of "all" or a list of languages
	ignore_install = {}, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = false , disable = { "python", "css" } },
})
