local c = require 'nordic.colors'

return {
	NotifyERRORBorder = { fg = c.error },
	NotifyERRORIcon = { fg = c.error },
	NotifyERRORTitle = { fg = c.error, bold = true },
	NotifyERRORBody = { fg = c.fg },

	NotifyWARNBorder = { fg = c.warn },
	NotifyWARNIcon = { fg = c.warn },
	NotifyWARNTitle = { fg = c.warn, bold = true },
	NotifyWARNBody = { fg = c.fg },

	NotifyINFOBorder = { fg = c.info },
	NotifyINFOIcon = { fg = c.info },
	NotifyINFOTitle = { fg = c.info, bold = true },
	NotifyINFOBody = { fg = c.fg },

	NotifyDEBUGBorder = { fg = c.orange.bright },
	NotifyDEBUGIcon = { fg = c.orange.bright },
	NotifyDEBUGTitle = { fg = c.orange.bright, bold = true },
	NotifyDEBUGBody = { fg = c.fg },

	NotifyTRACEBorder = { fg = c.gray5 },
	NotifyTRACEIcon = { fg = c.gray5 },
	NotifyTRACETitle = { fg = c.gray5 , bold = true },
	NotifyTRACEBody = { fg = c.fg },
}
