local U = require('nordic.utils')

local M = {}

function M.generate(colors)
    return U.template(
        [[
# Nordic Colorscheme for btop.
# Based on https://github.com/AlexvZyl/nordic.nvim.
# Author: @DOD-101.

# Main background, empty for terminal default, need to be empty if you want transparent background
theme[main_bg]="${bg}"

# Main text color
theme[main_fg]="${fg}"

# Title color for boxes
theme[title]="${white0}"

# Highlight color for keyboard shortcuts
theme[hi_fg]="${orange.bright}"

# Background color of selected item in processes box
theme[selected_bg]="${gray2}"

# Foreground color of selected item in processes box
theme[selected_fg]="${white0}"

# Color of inactive/disabled text
theme[inactive_fg]="${gray5}"

# Color of text appearing on top of graphs, i.e uptime and current network graph scaling
theme[graph_text]="${gray3}"

# Background color of the percentage meters
theme[meter_bg]="${black1}"

# Misc colors for processes box including mini cpu graphs, details memory graph and details status text
theme[proc_misc]="${green.dim}"

# Cpu box outline color
theme[cpu_box]="${orange.dim}"

# Memory/disks box outline color
theme[mem_box]="${green.dim}"

# Net up/down box outline color
theme[net_box]="${magenta.dim}"

# Processes box outline color
theme[proc_box]="${cyan.dim}"

# Box divider line and small boxes line color
theme[div_line]="${gray2}"

# Temperature graph colors
theme[temp_start]="${cyan.base}"
theme[temp_mid]="{magenta.base}"
theme[temp_end]="${red.base}"

# CPU graph colors
theme[cpu_start]="${cyan.base}"
theme[cpu_mid]="${yellow.base}"
theme[cpu_end]="${red.bright}"

# Mem/Disk free meter
theme[free_start]="${green.dim}"
theme[free_mid]="${green.base}"
theme[free_end]="${green.bright}"

# Mem/Disk cached meter
theme[cached_start]="${blue0}"
theme[cached_mid]="${blue1}"
theme[cached_end]="${blue2}"

# Mem/Disk available meter
theme[available_start]="${yellow.dim}"
theme[available_mid]="${yellow.base}"
theme[available_end]="${yellow.bright}"

# Mem/Disk used meter
theme[used_start]="${green.base}"
theme[used_mid]="${yellow.base}"
theme[used_end]="${red.base}"

# Download graph colors
theme[download_start]="${blue0}"
theme[download_mid]="${blue1}"
theme[download_end]="${blue2}"

# Upload graph colors
theme[upload_start]="${magenta.dim}"
theme[upload_mid]="${magenta.base}"
theme[upload_end]="${magenta.bright}"

# Process box color gradient for threads, mem and cpu usage
theme[process_start]="${green.base}"
theme[process_mid]="${yellow.base}"
theme[process_end]="${red.base}"

# Process box banner colors
theme[proc_pause_bg]="{red.dim}"
theme[proc_follow_bg]="${blue1}"
theme[proc_banner_bg]="${magenta.dim}"
theme[proc_banner_fg]="${white0}"

# Process following attributes
theme[followed_bg]="${blue1}"
theme[followed_fg]="${white0}"
]],
        colors
    )
end

return M
