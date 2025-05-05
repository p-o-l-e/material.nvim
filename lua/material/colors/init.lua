local high_visibility = require "material.util.config".settings.high_visibility

---colors table
local colors = {
    ---main colors
    main = {
        white      = "#EEFFFF",
        gray       = "#546e7a",
        black      = "#1E272C",
        red        = "#F07178",
        green      = "#C3E88D",
        yellow     = "#FFCB6B",
        blue       = "#82AAFF",
        paleblue   = "#B0C9FF",
        cyan       = "#89DDFF",
        purple     = "#C792EA",
        orange     = "#F78C6C",
        -- pink       = "#FF9CAC",

        darkred    = "#DC6068",
        darkgreen  = "#ABCF76",
        darkyellow = "#E6B455",
        darkblue   = "#6E98EB",
        darkcyan   = "#71C6E7",
        darkpurple = "#B480D6",
        darkorange = "#E2795B",
    },

    ---colors applied to the editor
    editor = {
        link   = "#80CBC4",
        cursor = "#FFCC00",
        title  = "#EEFFFF",
    },

    lsp = {
        error = "#FF5370",
    },

    syntax = {},
    git = {},
    backgrounds = {},
}

-- Style specific colors

if vim.g.material_style == "darker" then
    -- Darker theme style

    if high_visibility.darker then
        -- Darker theme style with high contrast
        colors.editor.line_numbers = "#5C5C5C"
        colors.syntax.comments     = "#757575"
    else
        -- default Darker theme style
        colors.editor.line_numbers = "#424242"
        colors.syntax.comments     = "#515151"
    end

    colors.editor.bg        = "#263238"
    colors.editor.bg_alt    = "#1E272C"
    colors.editor.fg        = "#B0BEC5"
    colors.editor.fg_dark   = "#8C8B8B"
    colors.editor.selection = "#404040"
    colors.editor.contrast  = "#1E272C"
    colors.editor.active    = "#323232"
    colors.editor.border    = "#343434"
    colors.editor.highlight = "#3F3F3F"
    colors.editor.disabled  = "#474747"
    colors.editor.accent    = "#FF9800"


elseif vim.g.material_style == "lighter" then
    -- Lighter theme style

    if high_visibility.lighter then

        -- Lighter theme style with high contrast
        colors.editor.fg           = "#213B47" -- 20% darkened
        colors.editor.fg_dark      = "#61747D" -- 20% darkened
        colors.editor.selection    = "#e2e9e9" -- 15% saturation, 10% lightness
        colors.editor.line_numbers = "#B6BFC3" -- 10% darkened
        colors.editor.accent       = "#0089A1" -- 20% darkened
        colors.syntax.comments     = "#778C96" -- 20% darkened

        colors.main.red      = "#B20602" -- 20% darkened
        colors.main.green    = "#5E8526" -- 20% darkened
        colors.main.yellow   = "#C37101" -- 20% darkened
        colors.main.blue     = "#2E4F85" -- 20% darkened
        colors.main.paleblue = "#54637D" -- 20% darkened
        colors.main.cyan     = "#067A82" -- 20% darkened
        colors.main.purple   = "#491ACC" -- 20% darkened
        colors.main.orange   = "#C43A14" -- 20% darkened
        colors.main.pink     = "#CC203D" -- 20% darkened

    else

        -- default Lighter theme style
        colors.editor.fg           = "#546E7A"
        colors.editor.fg_dark      = "#94A7B0"
        colors.editor.selection    = "#80CBC4"
        colors.editor.line_numbers = "#CFD8DC"
        colors.editor.accent       = "#00BCD4"
        colors.syntax.comments     = "#AABFC9"

        colors.main.red      = "#E53935"
        colors.main.green    = "#91B859"

        colors.main.yellow   = "#F6A434"
        colors.main.blue     = "#6182B8"
        colors.main.paleblue = "#8796B0"
        colors.main.cyan     = "#39ADB5"
        colors.main.purple   = "#7C4DFF"
        colors.main.orange   = "#F76D47"
        colors.main.pink     = "#FF5370"

    end

    colors.editor.bg        = "#FAFAFA"
    colors.editor.bg_alt    = "#FFFFFF"
    colors.editor.contrast  = "#EEEEEE"
    colors.editor.active    = "#E7E7E8"
    colors.editor.border    = "#D3E1E8"
    colors.editor.highlight = "#E7E7E8"
    colors.editor.disabled  = "#D2D4D5"
    colors.editor.cursor    = "#272727"

    colors.editor.white = "#FFFFFF"
    colors.editor.gray  = "#717CB4"
    colors.editor.title = colors.main.black


elseif vim.g.material_style == "palenight" then
    -- Palenight theme style

    colors.editor.bg           = "#292D3E"
    colors.editor.bg_alt       = "#1B1E2B"
    colors.editor.fg           = "#A6ACCD"
    colors.editor.fg_dark      = "#717CB4"
    colors.editor.selection    = "#444267"
    colors.editor.contrast     = "#202331"
    colors.editor.active       = "#414863"
    colors.editor.border       = "#364367"
    colors.editor.line_numbers = "#3A3F58"
    colors.editor.highlight    = "#444267"
    colors.editor.disabled     = "#515772"
    colors.editor.accent       = "#AB47BC"
    colors.editor.none         = "NONE"
    colors.syntax.comments     = "#676E95"

elseif vim.g.material_style == "deep ocean" then
    -- Deep Ocean theme style

    colors.editor.bg           = "#0F111A"
    colors.editor.bg_alt       = "#090B10"
    colors.editor.fg           = "#A6ACCD"
    -- colors.editor.fg_darker    = "#8DA3CA" -- TODO
    colors.editor.fg_dark      = "#717CB4"
    colors.editor.selection    = "#1F2233"
    colors.editor.contrast     = "#090B10"
    colors.editor.active       = "#1A1C25"
    colors.editor.border       = "#232637"
    colors.editor.line_numbers = "#3B3F51"
    colors.editor.highlight    = "#1F2233"
    colors.editor.disabled     = "#464B5D"
    colors.editor.accent       = "#84FFFF"
    colors.syntax.comments     = "#464B5D"

else vim.g.material_style = "oceanic"
    -- Oceanic theme style

    colors.editor.bg           = "#263238"
    colors.editor.bg_alt       = "#20292E"
    colors.editor.fg           = "#B0BEC5"
    colors.editor.fg_dark      = "#607D8B"
    -- colors.editor.fg_dark      = "#4B504F"
    colors.editor.selection    = "#314047"
    colors.editor.border       = "#2A373E"
    colors.editor.line_numbers = "#425B67"
    colors.editor.highlight    = "#354A51"-- highlight
    colors.editor.disabled     = "#415967"
    colors.editor.accent       = "#009688"
    colors.editor.contrast     = "#1E272C"
    colors.editor.active       = "#314549"
    colors.syntax.comments     = "#4F6875"

end

---syntax colors
colors.syntax.variable = colors.editor.fg
colors.syntax.field    = colors.editor.fg
colors.syntax.keyword  = colors.main.purple
colors.syntax.value    = colors.main.orange
colors.syntax.operator = colors.main.cyan
colors.syntax.fn       = colors.main.blue
colors.syntax.parameter = colors.main.paleblue
colors.syntax.string   = colors.main.green
colors.syntax.type     = colors.main.purple

---git colors
colors.git.added    = colors.main.green
colors.git.removed  = colors.main.red
colors.git.modified = colors.main.blue

---lsp colors
colors.lsp.warning = colors.main.yellow
colors.lsp.info    = colors.main.paleblue
colors.lsp.hint    = colors.main.purple

---contrasted backgrounds
colors.backgrounds.sidebars            = colors.editor.bg
colors.backgrounds.floating_windows    = colors.editor.bg
colors.backgrounds.non_current_windows = colors.editor.bg
colors.backgrounds.bg_blend            = colors.editor.bg -- backup used for blending backgrounds (issue: #212)
colors.backgrounds.cursor_line         = colors.editor.active

return colors
