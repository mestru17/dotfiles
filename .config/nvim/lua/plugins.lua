local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(
  function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Colorschemes
    use 'christianchiarulli/nvcode-color-schemes.vim'
		use 'folke/tokyonight.nvim'
    use 'folke/lsp-colors.nvim' -- Color fixes

    -- Treesitter
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

    -- LSP
    use "neovim/nvim-lspconfig"
    use "kabouzeid/nvim-lspinstall"

    -- Autocomplete
    use "hrsh7th/nvim-compe"

    -- Explorer
    use "kyazdani42/nvim-web-devicons"
    use "kyazdani42/nvim-tree.lua"

    -- Autopairs
    use "windwp/nvim-autopairs"

    -- Fuzzy finder
    --use {
    --  'nvim-telescope/telescope.nvim',
    --  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    --}

    -- Status line
    use 'glepnir/galaxyline.nvim'

		-- Which-key
		use {
			"folke/which-key.nvim",
			config = function()
				require("which-key").setup {}
			end
		}
  end
)

