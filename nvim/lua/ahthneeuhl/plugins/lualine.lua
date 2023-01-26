local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local lualine_nightfly = require("lualine.themes.nightfly")

local colors = {
  blue = "#65D1FF",
  green = "#3EFFDC",
  violet = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#000000",
}

-- change nightlfy theme colors
lualine_nightfly.normal.a.bg = colors.blue
lualine_nightfly.insert.a.bg = colors.green
lualine_nightfly.visual.a.bg = colors.violet
lualine_nightfly.command = {
  a = {
    gui = "bold",
    bg = colors.yellow,
    fg = colors.black, -- black
  },
}

lualine.setup({
  options = {
    theme = lualine_nightfly,
  }
})
