-- Define style_switch
if vim.g.moonlight_style_switch == nil then
    vim.g.moonlight_style_switch = 0
end

-- Change_style takes a style name as a parameter and switches to that style
 local change_style = function (style)
     vim.g.moonlight_style = style
     print("Moonlight style: ", style)
     --[[ package.loaded['moonlight'] = nil
     package.loaded['moonlight.util'] = nil
     package.loaded['moonlight.theme'] = nil
     package.loaded['moonlight.colors'] = nil
     package.loaded['moonlight.functions'] = nil
     require('moonlight').set() ]]
     vim.cmd[[colorscheme moonlight]]
 end

-- Toggle_style takes no parameters toggles the style on every function call
 local toggle_style = function ()
    local switch = {  "moonlight" }
    vim.g.moonlight_style_switch = (vim.g.moonlight_style_switch % table.getn(switch)) + 1
  change_style(switch[vim.g.moonlight_style_switch])
 end

 return {
     change_style = change_style,
     toggle_style = toggle_style
}
