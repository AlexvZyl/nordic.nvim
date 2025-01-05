#!/usr/bin/env sh

nvim --headless -u NONE -c "lua package.path = package.path .. ';./lua/?/init.lua;./lua/?.lua'; require('nordic.platforms').setup() ; vim.api.nvim_command('quit')"
