local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- general plugins 
  use { "wbthomason/packer.nvim"} 
  use { "nvim-lua/plenary.nvim"} 
  use { "windwp/nvim-autopairs"} 
  use { "numToStr/Comment.nvim"}
  use { "JoosepAlviste/nvim-ts-context-commentstring"}
  use { "kyazdani42/nvim-web-devicons"}
  use { "kyazdani42/nvim-tree.lua"}
  use { "akinsho/bufferline.nvim"}
  use { "moll/vim-bbye"}
  use { "nvim-lualine/lualine.nvim"}
  use { "akinsho/toggleterm.nvim"}
  use { "ahmedkhalf/project.nvim"}
  use { "lewis6991/impatient.nvim"}
  use { "lukas-reineke/indent-blankline.nvim"}
  use { "goolord/alpha-nvim"}
  use { "mattn/emmet-vim" }
  use {"vifm/vifm.vim"}
  use {"tpope/vim-surround"}
  use {"ggandor/lightspeed.nvim"}
  use {'stevearc/dressing.nvim'}

  -- Colorschemes
  use {"morhetz/gruvbox"}
  use {'folke/tokyonight.nvim'}

  -- cmp plugins
  use { "hrsh7th/nvim-cmp"} 
  use { "hrsh7th/cmp-buffer"} 
  use { "hrsh7th/cmp-path"} 
  use { "saadparwaiz1/cmp_luasnip"} 
  use { "hrsh7th/cmp-nvim-lsp"}
  use { "hrsh7th/cmp-nvim-lua"}

  -- snippets
  use { "L3MON4D3/LuaSnip"} 
  use { "rafamadriz/friendly-snippets"} 
  use {"mlaursen/vim-react-snippets"}

  -- syntax
  use {"evanleck/vim-svelte"}

  -- LSP
  use { "neovim/nvim-lspconfig"} 
  use { "williamboman/nvim-lsp-installer"} 
  use { "jose-elias-alvarez/null-ls.nvim"} 
  use { "RRethy/vim-illuminate"}

  -- Telescope
  use { "nvim-telescope/telescope.nvim"}

  -- Org mode

    use {'nvim-orgmode/orgmode'}

    -- Treesitter
  use { "nvim-treesitter/nvim-treesitter"}

  -- Git
  use { "lewis6991/gitsigns.nvim"}

  -- DAP
  use { "mfussenegger/nvim-dap"}
  use { "rcarriga/nvim-dap-ui"}
  use { "ravenxrz/DAPInstall.nvim"}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
