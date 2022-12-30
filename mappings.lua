local M = {}

M.general = {
  n = {
    --split screen
    ["-"]={":split<cr>","split"},
    ["|"]={":vsplit<cr>","split vertical"},
    ["<F2>"]={":on<cr>","delete all buffer"},
    --buffer action
    ["<Tab>"]={":bnext<cr>","buffer next"},
    ["<C-Tab>"]={":bd<cr>","delete buffer"},
    ["<S-Tab>"]={":bprev<cr>","buffer prev"},
    --buffer resize
    ["<C-S-Right>"]={":vertical resize +2<cr>","resize right"},
    ["<C-S-Left>"]={":vertical resize -2<cr>","resize left"},
    ["<C-S-Up>"]={":resize -2<cr>","resize up"},
    ["<C-S-Down>"]={":resize +2<cr>","resize down"},
    --buffer move
    ["<C-Right>"]={"<C-w><Right>","hover right"},
    ["<C-Left>"]={"<C-w><Left>","hover left"},
    ["<C-Up>"]={"<C-w><Up>","hover up"},
    ["<C-Down>"]={"<C-w><Down>","hover down"},
    --select all
    ["<C-a>"]={"gg<S-v>G","select all"},
    --vscode copy
    --move line
    ["<M-Up>"]={":m .-2<cr>==","move line up"},
    ["<M-Down>"]={":m .+1<cr>==","move line down"},
    --copy line+move
    ["<M-S-Up>"]={"yyP<end>","copy line up"},
    ["<M-S-Down>"]={"yyp<end>","copy line down"},
    --convinient
    ["<C-h>"]={":nohlsearch","reset search"}
  },
  v = {
    --copy vscode
    --move selected
    ["<M-Up>"]={":m '<-2<cr>gv-gv","move selected up"},
    ["<M-Down>"]={":m '>+1<cr>gv-gv","move selected down"},
    --copy selected+move
    ["<M-S-Up>"]={"y`]p`]gv-gv","copy selected up"},
    ["<M-S-Down>"]={"yP`[gv-gv","copy selected down"}
  },
  i = {
    --vscode copy
    --move line
    ["<M-Up>"]={"<esc>:m .-2<cr>==","move line up"},
    ["<M-Down>"]={"<esc>:m .+1<cr>==","move line down"},
    --copy line+move
    ["<M-S-Up>"]={"<esc>yyP<end>","copy line up "},
    ["<M-S-Down>"]={"<esc>yyp<end>","copy line down"},
    --convinient
    ["<C-x>"]={"<C-o>ddi","cut line"},
    ["<C-a>"]={"<esc>gg<S-v>G","select all"},
    ["<C-v>"]={"<C-o>v<S-Right>","go to visual"},
    ["<C-S-v>"]={"<C-o>p","paste"}
  }
}
return M
