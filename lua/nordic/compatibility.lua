local U = require("nordic.utils");

local function compatability(options)
    -- All backwards compatibility

    -- Log level
    local level = vim.log.levels.WARN
    -- Message Options
    local message_options = {
        title = 'Warning from nordic.nvim',
    }

    -- transparent_bg
    if options.transparent_bg ~= nil then
        vim.notify_once(
            'Nordic.nvim: config.transparent_bg is deprecated, use config.transparent instead',
            level,
            message_options
        )
        options.transparent = {
            bg = options.transparent_bg,
            float = options.transparent_bg,
        }
    end


    -- override
    if options.override ~= nil then
        vim.notify_once(
            'Nordic.nvim: config.override is deprecated, use config.on_highlight instead',
            level,
            message_options
        )

        local old_on_highlight = options.on_highlight;
        options.on_highlight = function(highlights, palette)
            highlights = U.merge(highlights, options.override)
            if old_on_highlight ~= nil then
                palette = old_on_highlight(highlights, palette)
            end
            return highlights
        end
    end


    return options
end

return compatability
