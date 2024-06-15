local M = {}

M.NAME = 'nordic'
function M.loaded()
    return vim.g.colors_name == M.NAME
end

function M.highlight(table)
    for group, config in pairs(table) do
        vim.api.nvim_set_hl(0, group, config)
    end
end

function M.none()
    return 'NONE'
end

function M.is_none(string)
    return string == 'NONE' or string == 'none'
end

function M.is_table(value)
    return type(value) == 'table'
end

function M.merge(table1, table2)
    -- TODO what about replacing this with merge_inplace
    if not table1 then
        return table2 or {}
    elseif not table2 then
        return table1
    end
    return vim.tbl_deep_extend('force', table1, table2)
end

function M.merge_inplace(table1, table2)
    -- clone values
    for k, v in pairs(table1) do
        if M.is_table(v) then
            table1[k] = {}
            M.merge_inplace(table1[k], v)
        end
    end

    -- merge
    for k, v in pairs(table2) do
        if M.is_table(v) then
            if not M.is_table(table1[k]) then table1[k] = {} end
            M.merge_inplace(table1[k], v)
        else
            table1[k] = v
        end
    end
end

function M.hex_to_rgb(str)
    str = string.lower(str)
    return tonumber(str:sub(2, 3), 16), tonumber(str:sub(4, 5), 16), tonumber(str:sub(6, 7), 16)
end

function M.rgb_to_hex(r, g, b)
    return '#' .. string.format('%X', r) .. string.format('%X', g) .. string.format('%X', b)
end

-- Adapted from @folke/tokyonight.nvim.
function M.blend(foreground, background, alpha)
    if M.is_none(foreground) or M.is_none(background) then return M.none() end

    local fg = { M.hex_to_rgb(foreground) }
    local bg = { M.hex_to_rgb(background) }

    local blend_channel = function(c_fg, c_bg)
        local ret = (alpha * c_fg + ((1 - alpha) * c_bg))
        return math.floor(math.min(math.max(0, ret), 255) + 0.5)
    end

    return M.rgb_to_hex(blend_channel(fg[1], bg[1]), blend_channel(fg[2], bg[2]), blend_channel(fg[3], bg[3]))
end

return M
