local M = {}

-- Цвета
local PURPLE = "#6B46C1"
local BLACK = "#1e1e1e"
local WHITE = "#ffffff"

function M.setup(wezterm)
    wezterm.on('format-tab-title', function(tab, tabs, tabpanes, config, hover, width)
        local title = tab.tab_title
        if title == "" then
            title = tab.active_pane.title
        end

        if tab.is_active then
            return {
                'Background', BLACK,
                'Foreground', WHITE,
                'Text', ' ' .. title .. ' ',
            }
        else
            return {
                'Background', PURPLE,
                'Foreground', WHITE,
                'Text', ' ' .. title .. ' ',
            }
        end
    end)
end

return M
