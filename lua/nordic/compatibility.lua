local U = require('nordic.utils')

local function compatability(options)
    -- All backwards compatibility
    -- While an option is deprecated it should still work but be overridden by its replacement

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

        local users_on_highlight = options.on_highlight
        -- Create a new on_highlight that will apply `override` and then the users `on_highlight`
        options.on_highlight = function(highlights, palette)
            U.merge_inplace(highlights, options.override)
            -- This nil check is required because we have not been given default values yet
            if users_on_highlight ~= nil then users_on_highlight(highlights, palette) end
        end
    end

    return options
end

return compatability
