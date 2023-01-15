-- Noctis Obscuro
local colorscheme = require('colorscheme');

local palette = {
  bg0           = '#F4F6F6',  -- Text
  bg1           = '#DCECF0',  -- CursorLine/Sign
  bg2           = '#E9F2F3',  -- Pmenu
  bg3           = '#DCECF0',  -- StatusLine
  bg4           = '#E9F2F3',  -- Tabline/Winbar
  bg_red        = '#F2CFCC',
  bg_green      = '#E3EAD9',
  bg_blue       = '#DCECF0',
  fg            = '#23555F',
  red           = '#EC6392',
  orange        = '#D44F24',
  yellow        = '#EB8F34',
  green         = '#50B06F',
  cyan          = '#4193A5',
  blue          = '#4192E9',
  purple        = '#5543F5',
  grey          = '#91A5A6',
  light_grey    = '#C4CFD1',
  light_yellow  = '#DEA459',
  none          = 'NONE',
};

colorscheme.from_palette(palette, {
 Type      = { fg=palette.blue, bold=true },
 Include   = { fg=palette.red, bold=true },
 Keyword   = { fg=palette.orange, bold=true },
 Operator  = { fg=palette.red, bold=true },
});
