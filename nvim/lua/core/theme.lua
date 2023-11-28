vim.g.colors_name = "onedark"

local C = {
    Red    = "#E06C75",
    DRed   = "#BD3D37",
    Orange = "#D19A66",
    Yellow = "#E5C07B",
    Green  = "#98C379",
    DGreen = "#109868",
    Cyan   = "#56B6C2",
    Blue   = "#61AFEF",
    Purple = "#C678DD",
    Gray   = "#5C6370",
    DGray  = "#3e4452",
    LGray  = "#ABB2BF",
    Black  = "#2c313c",
    White  = "#FFFFFF",
}

local highlights = {
    -- Core
    ["Normal"]                 = { guifg = C.LGray  },
    ["Visual"]                 = { guibg = C.DGray  },
    ["LineNr"]                 = { guifg = C.Gray   },
    ["NonText"]                = { guifg = C.DGray  },
    ["CursorLine"]             = { guibg = C.DGray  },
    ["Title"]                  = { guifg = C.Orange },
    ["Directory"]              = { guifg = C.Blue   },
    ["MatchParen"]             = { guibg = C.Gray   },
    ["PmenuSbar"]              = { guibg = C.DGray  },
    ["PmenuThumb"]             = { guibg = C.LGray  },
    ["Pmenu"]                  = { guifg = C.LGray, guibg = C.DGray  },
    ["PmenuSel"]               = { guifg = C.White, guibg = C.Blue   },
    ["Search"]                 = { guifg = C.Black, guibg = C.Orange },
    ["Identifier"]             = { guifg = C.Red    },
    ["Boolean"]                = { guifg = C.Orange },
    ["Number"]                 = { guifg = C.Orange },
    ["PreProc"]                = { guifg = C.Yellow },
    ["Type"]                   = { guifg = C.Purple },
    ["String"]                 = { guifg = C.Green  },
    ["Character"]              = { guifg = C.Green  },
    ["Constant"]               = { guifg = C.Cyan   },
    ["Special"]                = { guifg = C.Blue   },
    ["Include"]                = { guifg = C.Blue   },
    ["Function"]               = { guifg = C.Blue   },
    ["Statement"]              = { guifg = C.Purple },
    ["Keyword"]                = { guifg = C.Purple },
    ["Conditional"]            = { guifg = C.Purple },
    ["Comment"]                = { guifg = C.Gray   },

    -- lsp
    ["@lsp.type.namespace"]    = { guifg = C.Yellow },
    ["@lsp.type.class"]        = { guifg = C.Yellow },

    -- Markdown
    ["@text.uri"]              = { guifg = C.Purple },
    ["@text.title"]            = { guifg = C.Red,   gui = "bold"   },
    ["@text.strong"]           = { guifg = C.White, gui = "bold"   },
    ["@text.literal"]          = { guifg = C.Green, gui = "italic" },
    ["@text.reference"]        = { guifg = C.Blue   },
    ["@constant.builtin"]      = { guifg = C.Orange },
    ["@punctuation.delimiter"] = { guifg = C.LGray  },
}

local highlights_link = {
    ["@storageclass"]  = "Keyword",

    -- zsh
    ["zshVariable"]    = "Identifier",
    ["zshOperator"]    = "Operator",
    ["zshKSHFunction"] = "Function",

    -- lsp
    ["luaFunc"] = "Function",
}

local highlights_clear = {
    "SignColumn",
    "CursorLineNr",
    "StatusLine",
    "TabLineFill",
}

require("core").setHighlights(highlights)
require("core").linkHighlights(highlights_link)
require("core").clearHighlights(highlights_clear)

return C