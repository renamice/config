-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvbox",
  nvdash = {
    load_on_startup = true,

    header = {
      "						⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠄⠒⠒⠀⠐⠒⠢⠤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀						  ",
      "						⠀⠀⠀⠀⠀⠀⠴⡢⠀⠀⠤⠀⠐⢠⠄⠀⠠⡤⠀⠈⠒⠒⡢⡀⠀⠀⠀⠀⠀⠀						  ",
      "						⠀⠀⠀⠀⠀⠀⠃⡘⠀⠀⣀⣡⣤⣤⣤⣦⣤⣤⣈⡄⠀⠀⠈⠀⡇⠀⠀⠀⠀⠀⠀						  ",
      "						⠀⠀⠀⠀⠀⠀⢲⢀⣴⠾⠟⠛⠉⡉⠉⡉⠉⣩⠛⠛⠷⣄⠀⡏⠀⠀⠀⠀⠀⠀⠀						  ",
      "						⠀⠀⠀⠀⠀⠀⠈⡘⠁⡅⡆⠀⢠⢁⠀⣇⠈⢹⡍⠀⠀⢈⡆⡇⠀⠀⠀⠀⠀⠀⠀						  ",
      "						⠀⠀⠀⠀⠀⠀⢠⠇⣧⡷⢡⢄⡄⠂⠂⠃⠈⡽⣭⢢⠐⡀⢈⡇⠀⠀⠀⠀⠀⠀⠀						  ",
      "						⠀⠀⠀⠀⠀⠀⠀⢸⡘⡂⠀⠁⠁⠀⠀⠀⠀⠉⠁⢸⠠⣿⡎⠇⠀⠀⠀⠀⠀⠀⠀						  ",
      "						⠀⠀⠀⠀⠀⠀⢠⠀⡟⠿⠢⢀⠀⠀⠀⠄⠀⢀⡠⡯⠝⠙⠀⢸⠀⠀⠀⠀⠀⠀⠀						  ",
      "						⠀⠀⠀⠀⠀⠀⠸⡀⢁⡀⠀⡀⠉⠋⣤⢢⠅⠉⠄⡛⠀⡠⢡⠊⠀⠀⠀⠀⠀⠀⠀						  ",
      "						⠀⠀⠀⠀⠀⠀⠀⠸⠑⠂⠌⠒⠂⠐⠙⡀⠁⠈⠙⠐⠂⠂⢸⠀⠀⠀⠀⠀⠀⠀⠀						  ",
      "						⠀⠀⠀⠀⠀⠀⢀⠗⠂⠀⠠⠀⠀⠀⠈⠀⠀⠀⠀⠄⢊⠀⠀⡆⠀⠀⠀⠀⠀⠀⠀						  ",
      "						⠀⠀⠀⠀⠀⠀⠣⠤⠤⠂⢊⠀⠠⠄⠀⠀⠀⠀⠀⢀⠀⠦⠤⠇⠀⠀⠀⠀⠀⠀⠀						  ",
      "						⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠤⠤⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀						  ",
    },
    -- header = {
    --     [[  .-.       ]],
    --     [[ (o o) boo! ]],
    --     [[ | O \      ]],
    --     [[  \   \     ]],
    --     [[   `~~~'    ]],
    -- },
    -- header = {
    --   [[                           .-""-.      ]],
    --   [[                          (___/\ \     ]],
    --   [[        ,                 (|^ ^ ) )    ]],
    --   [[       /(                _)_\=_/  (    ]],
    --   [[ ,..__/ `\          ____(_/_ ` \   )   ]],
    --   [[  `\    _/        _/---._/(_)_  `\ (   ]],
    --   [[    '--\ `-.__..-'    /.    (_), |  )  ]],
    --   [[        `._        ___\_____.'_| |__/  ]],
    --   [[           `~----"`   `-.........'     ]],
    --   }

    -- header = {
    -- [[      |\_/|                     ]],
    -- [[      | @ @   Woof!             ]],
    -- [[      |   <>              _     ]],
    -- [[      |  _/\------____ ((| |))  ]],
    -- [[      |               `--' |    ]],
    -- [[  ____|_       ___|   |___.'    ]],
    -- [[ /_/_____/____/_______|         ]],
    -- }

    -- header = {
    -- [[          ▀████▀▄▄              ▄█ ]],
    -- [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
    -- [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
    -- [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
    -- [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
    -- [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
    -- [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
    -- [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
    -- [[   █   █  █      ▄▄           ▄▀   ]],
    -- }

    -- header = {
    -- [[         _               ]],
    -- [[        / \      _-'     ]],
    -- [[      _/|  \-''- _ /     ]],
    -- [[  __-' { |          \    ]],
    -- [[      /             \    ]],
    -- [[      /       "o.  |o }  ]],
    -- [[      |            \ ;   ]],
    -- [[                    ',   ]],
    -- [[         \_         __\  ]],
    -- [[           ''-_    \.//  ]],
    -- [[             / '-____'   ]],
    -- [[             /           ]],
    -- [[            _'           ]],
    -- [[          _-'            ]],
    -- }
  },
  hl_override = {
    NvDashAscii = {
      bg = "none",
      fg = "blue",
    },
    NvDashButtons = {
      bg = "none",
      fg = "light_grey",
    },
    -- Comment = { italic = true },
    -- ["@comment"] = { italic = true },
  },
}
return M
