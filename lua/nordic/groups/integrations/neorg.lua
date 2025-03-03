local M = {}

function M.get()
    local G = {}

    G['@neorg.headings.1.title'] = { link = '@markup.heading.1' }
    G['@neorg.headings.1.prefix'] = { link = '@markup.heading.1' }
    G['@neorg.headings.2.title'] = { link = '@markup.heading.2' }
    G['@neorg.headings.2.prefix'] = { link = '@markup.heading.2' }
    G['@neorg.headings.3.title'] = { link = '@markup.heading.3' }
    G['@neorg.headings.3.prefix'] = { link = '@markup.heading.3' }
    G['@neorg.headings.4.title'] = { link = '@markup.heading.4' }
    G['@neorg.headings.4.prefix'] = { link = '@markup.heading.4' }
    G['@neorg.headings.5.title'] = { link = '@markup.heading.5' }
    G['@neorg.headings.5.prefix'] = { link = '@markup.heading.5' }
    G['@neorg.headings.6.title'] = { link = '@markup.heading.6' }
    G['@neorg.headings.6.prefix'] = { link = '@markup.heading.6' }

    return G
end

return M
