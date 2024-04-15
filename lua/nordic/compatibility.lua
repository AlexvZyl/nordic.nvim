local function compatability(options)
    -- All backwards compatibility

    -- Log level
    local level = vim.log.levels.WARN

    if options.transparent_bg then
        vim.notify('Nordic.nvim: transparent_bg is deprecated, use transparent instead', level)
        if not options.transparent then
            options.transparent = {
                bg = true,
                float = true,
            }
        end
    end

    return options
end

return compatability
