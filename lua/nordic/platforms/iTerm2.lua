---@param hex string
---@param component string
---@return string
local function get_component(hex, component)
    hex = hex:gsub('#', '')
    local num
    if component == 'r' then
        num = tonumber('0x' .. hex:sub(1, 2)) / 255
    elseif component == 'g' then
        num = tonumber('0x' .. hex:sub(3, 4)) / 255
    elseif component == 'b' then
        num = tonumber('0x' .. hex:sub(5, 6)) / 255
    end
    return string.format('%.16f', num)
end

local function template(str, table)
    return (
        str:gsub('($%b{})', function(w)
            local parts = vim.split(w:sub(3, -3), '.', { plain = true })
            local hex = vim.tbl_get(table, unpack(parts, 1, #parts - 1))
            return get_component(hex, w:sub(-2, -2))
        end)
    )
end

local M = {}

function M.generate(colors)
    local foot = template(
        [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Ansi 0 Color</key>
    <dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${black0.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${black0.g}</real>
		<key>Red Component</key>
		<real>${black0.r}</real>
    </dict>
    <key>Ansi 1 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${red.base.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${red.base.g}</real>
        <key>Red Component</key>
        <real>${red.base.r}</real>
    </dict>
    <key>Ansi 10 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${green.bright.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${green.bright.g}</real>
        <key>Red Component</key>
        <real>${green.bright.r}</real>
    </dict>
    <key>Ansi 11 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${yellow.bright.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${yellow.bright.g}</real>
        <key>Red Component</key>
        <real>${yellow.bright.r}</real>
    </dict>
    <key>Ansi 12 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${blue0.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${blue0.g}</real>
        <key>Red Component</key>
        <real>${blue0.r}</real>
    </dict>
    <key>Ansi 13 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${magenta.bright.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${magenta.bright.g}</real>
        <key>Red Component</key>
        <real>${magenta.bright.r}</real>
    </dict>
    <key>Ansi 14 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${cyan.bright.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${cyan.bright.g}</real>
        <key>Red Component</key>
        <real>${cyan.bright.r}</real>
    </dict>
    <key>Ansi 15 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${white1.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${white1.g}</real>
        <key>Red Component</key>
        <real>${white1.r}</real>
    </dict>
    <key>Ansi 2 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${green.base.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${green.base.g}</real>
        <key>Red Component</key>
        <real>${green.base.r}</real>
    </dict>
    <key>Ansi 3 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${yellow.base.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${yellow.base.g}</real>
        <key>Red Component</key>
        <real>${yellow.base.r}</real>
    </dict>
    <key>Ansi 4 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${blue0.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${blue0.g}</real>
        <key>Red Component</key>
        <real>${blue0.r}</real>
    </dict>
    <key>Ansi 5 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${magenta.base.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${magenta.base.g}</real>
        <key>Red Component</key>
        <real>${magenta.base.r}</real>
    </dict>
    <key>Ansi 6 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${cyan.base.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${cyan.base.g}</real>
        <key>Red Component</key>
        <real>${cyan.base.r}</real>
    </dict>
    <key>Ansi 7 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${white0.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${white0.g}</real>
        <key>Red Component</key>
        <real>${white0.r}</real>
    </dict>
    <key>Ansi 8 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${gray2.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${gray2.g}</real>
        <key>Red Component</key>
        <real>${gray2.r}</real>
    </dict>
    <key>Ansi 9 Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${red.bright.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${red.bright.g}</real>
        <key>Red Component</key>
        <real>${red.bright.r}</real>
    </dict>
    <key>Background Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>1</real>
        <key>Blue Component</key>
        <real>${bg.b}</real>
        <key>Color Space</key>
        <string>sRGB</string>
        <key>Green Component</key>
        <real>${bg.g}</real>
        <key>Red Component</key>
        <real>${bg.r}</real>
    </dict>
    <key>Badge Color</key>
    <dict>
        <key>Alpha Component</key>
        <real>0.5</real>
        <key>Blue Component</key>
        <real>${blue1.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${blue1.g}</real>
		<key>Red Component</key>
		<real>${blue1.r}</real>
	</dict>
	<key>Bold Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${cyan.dim.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${cyan.dim.g}</real>
		<key>Red Component</key>
		<real>${cyan.dim.r}</real>
	</dict>
	<key>Cursor Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${fg.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${fg.g}</real>
		<key>Red Component</key>
		<real>${fg.r}</real>
	</dict>
	<key>Cursor Guide Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>0.25</real>
		<key>Blue Component</key>
		<real>${fg.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${fg.g}</real>
		<key>Red Component</key>
		<real>${fg.r}</real>
	</dict>
	<key>Cursor Text Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${bg.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${bg.g}</real>
		<key>Red Component</key>
		<real>${bg.r}</real>
	</dict>
	<key>Foreground Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${fg.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${fg.g}</real>
		<key>Red Component</key>
		<real>${fg.r}</real>
	</dict>
	<key>Link Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${blue1.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${blue1.g}</real>
		<key>Red Component</key>
		<real>${blue1.r}</real>
	</dict>
	<key>Selected Text Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${fg.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${fg.g}</real>
		<key>Red Component</key>
		<real>${fg.r}</real>
	</dict>
	<key>Selection Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${bg_selected.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${bg_selected.g}</real>
		<key>Red Component</key>
		<real>${bg_selected.r}</real>
	</dict>
</dict>
</plist>
]],
        colors
    )

    return foot
end

return M
