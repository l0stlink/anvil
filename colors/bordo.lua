-- Noctis Bordo
local colorscheme = require('colorscheme');

local palette = {
  bg0           = '#312A2D',  -- Text
  bg1           = '#3C2F34',  -- CursorLine/Sign
  bg2           = '#2B2528',  -- Pmenu
  bg3           = '#3C2F34',  -- StatusLine
  bg4           = '#302629',  -- Tabline/Winbar
  bg_red        = '#562C2B',
  bg_green      = '#474738',
  bg_blue       = '#3C2F34',
  fg            = '#C9BEC2',
  red           = '#D17B9A',
  orange        = '#C5663F',
  yellow        = '#F6C38A',
  green         = '#7BE6AB',
  cyan          = '#4CA1B3',
  blue          = '#64AAE4',
  purple        = '#7060eb',
  grey          = '#5C5457',
  light_grey    = '#87757C',
  light_yellow  = '#DDB988',
  none          = 'NONE',
};

colorscheme.from_palette(palette, {
  Type             = { fg=palette.blue,       bold=true },
  Include          = { fg=palette.red,        bold=true },
  Keyword          = { fg=palette.orange,     bold=true },
  Operator         = { fg=palette.red,        bold=true },
});
