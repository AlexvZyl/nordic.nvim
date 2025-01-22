local U = require('nordic.utils')

local M = {}

function M.generate(colors)
    local footColors = U.removeHash(colors)

    return U.template(
        [[
[colors]
foreground=${fg}
background=${bg}

# black
regular0=${black0}
bright0=${gray2}

# red
regular1=${red.base}
bright1=${red.bright}

# green
regular2=${green.base}
bright2=${green.bright}

# yellow
regular3=${yellow.base}
bright3=${yellow.bright}

# blue
regular4=${blue0}
bright4=${blue2}

# magenta
regular5=${magenta.base}
bright5=${magenta.bright}

# cyan
regular6=${cyan.base}
bright6=${cyan.bright}

# white
regular7=${white0}
bright7=${white1}
]],
        footColors
    )
end

return M
