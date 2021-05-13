--                            M O O N L I G H T
--      _..._         _..._         _..._         _..._         _..._
--    .:::::::.     .::::. `.     .::::  `.     .::'   `.     .'     `.
--   :::::::::::   :::::::.  :   ::::::    :   :::       :   :         :
--   :::::::::::   ::::::::  :   ::::::    :   :::       :   :         :
--   `:::::::::'   `::::::' .'   `:::::   .'   `::.     .'   `.       .'
--     `':::''       `'::'-'       `'::.-'       `':..-'       `-...-'

-- Colorscheme name:    moonlight.nvim
-- Description:         Port of VSCode's Moonlight colorscheme for NeoVim
-- Author:              https://github.com/shaunsingh

local util = require('moonlight.util')

-- Load the theme
local set = function ()
    util.load()
end

return { set = set }
