local fn = vim.fn
local install_path = fn.stdpath("data") .. "~/.local/share/nvim/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = 
	fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end

return require('packer').startup(
  function(use)
	use 'wbthomason/packer.nvim'
	use 'arcticicestudio/nord-vim'

    -- LSP & completion
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
  use "williamboman/mason.nvim" -- easy lsp servers install
  use "williamboman/mason-lspconfig.nvim"
	-- For vsnip users.
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
	use 'raimondi/delimitmate' -- auto brackets

	use {
	  'kyazdani42/nvim-tree.lua',
	  requires = {
	    'kyazdani42/nvim-web-devicons', -- optional, for file icons
	  },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
    	use {
        	'nvim-treesitter/nvim-treesitter',
        	run = ':TSUpdate'
    	}

	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	-- or                            , branch = '0.1.x',
  	  requires = { {'nvim-lua/plenary.nvim'} }
}

 -- use {
 --  'gelguy/wilder.nvim',
 --  config = function()
 --    -- config goes here
 --  end,
-- }

  -- use 'ervandew/supertab'

end)


