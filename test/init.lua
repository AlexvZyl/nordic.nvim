-- Bootstrap packer.
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end
ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use({
		'AlexvZyl/nordic.nvim',
		-- branch = '',
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	require('packer').sync()
end)
