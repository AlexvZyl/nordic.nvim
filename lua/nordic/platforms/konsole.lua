local U = require('nordic.utils')

local function to_rgb(colors)
    local output_colors = {}
    for k, v in pairs(colors) do
        if type(v) == 'string' then
            if v == 'NONE' then
                output_colors[k] = 'NONE'
            else
                local r, g, b = U.hex_to_rgb(v)
                output_colors[k] = string.format('%d,%d,%d', r, g, b)
            end
        elseif type(v) == 'table' then
            output_colors[k] = to_rgb(v)
        end
    end

    return output_colors
end

local M = {}

function M.generate(colors)
    local konsoleColors = to_rgb(colors)

    return U.template(
        [[
[General]
Description=Nordic
Opacity=1

[Background]
Color=${bg}

[Foreground]
Color=${fg}

# black
[Color0]
Color=${black0}
[Color8]
Color=${gray2}

# red
[Color1]
Color=${red.base}
[Color9]
Color=${red.bright}

# green
[Color2]
Color=${green.base}
[Color10]
Color=${green.bright}

# yellow
[Color3]
Color=${yellow.base}
[Color11]
Color=${yellow.bright}

# blue
[Color4]
Color=${blue0}
[Color12]
Color=${blue2}

# magenta
[Color5]
Color=${magenta.base}
[Color13]
Color=${magenta.bright}

# cyan
[Color6]
Color=${cyan.base}
[Color14]
Color=${cyan.bright}

# white
[Color7]
Color=${white0}
[Color15]
Color=${white1}
]],
        konsoleColors
    )
end

return M
