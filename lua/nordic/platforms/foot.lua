local U = require('nordic.utils')

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
    local footColors = U.removeHash(colors)

    local foot = U.template(
        [[
[colors]
foreground=${white1}
background=${bg}

regular0=${gray2}
regular1=${red.base}
regular2=${green.base}
regular3=${yellow.base}
regular4=${blue1}
regular5=${magenta.base}
regular6=${cyan.base}
regular7=${white1}
bright0=${gray3}
bright1=${red.bright}
bright2=${green.bright}
bright3=${yellow.bright}
bright4=${blue2}
bright5=${magenta.bright}
bright6=${cyan.bright}
bright7=${white2}
]],
        footColors
    )

    return foot
end

return M
