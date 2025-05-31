" __transparent
" Author - fde-capu
" License - © 2024 WTFPL, Do What the Fuck You Want to Public License. - http://www.wtfpl.net/

let g:colors_name = g:colors_name . "__transparent"

fun <SID>Xbg(groups)
	for group in a:groups
		exec "hi " . group . " guibg=NONE ctermbg=none"
	endfor
endfun

fun <SID>FgGray(groups)
	for group in a:groups
    exec "hi " . group . " guifg=#808080 ctermfg=8"
	endfor
endfun

fun <SID>BgBlack(groups)
	for group in a:groups
    exec "hi " . group . " guifg=#000000 ctermfg=0"
	endfor
endfun

let transp_bg_groups = [
\ 'Normal',
\ 'Comment',
\ "Global",
\ "Debug",
\ "Delimiter",
\ "PreCondit",
\ "Macro",
\ "Identifier",
\ "Float",
\ "Ignore",
\ "Include",
\ "Define",
\ "Type",
\ "Exception",
\ "Keyword",
\ "Operator",
\ "PreProc",
\ "Special",
\ "String",
\ "Constant",
\ "Function",
\ "Structure",
\ "Label",
\ "Repeat",
\ "Conditional",
\ "Statement",
\ "Identifier",
\ "Title",
\ "Comment",
\ "ColorColumn",
\ "SignColumn",
\ "CursorColumn",
\ "CursorLine",
\ "FoldColumn",
\ "Folded",
\ "WarningMsg",
\ "Question",
\ "MoreMsg",
\ "ModeMsg",
\ "Directory",
\ "VertSplit",
\ "StatusLineNC",
\ "StatusLine",
\ "TabLineSel",
\ "TabLineFill",
\ "TabLine",
\ "SpecialKey",
\ "NonText",
\ "LineNr",
\ "Flashy",
\ "StatusLineTerm",
\ "StatusLineTermNC",
\ "Normal"
\ ]

let gray_fg_groups = [
\ "StatusLineNC",
\ "VertSplit",
\ "TabLine",
\ "TabLineFill"
\ ]

let black_bg_groups = [
\ "VertSplit"
\ ]

call <SID>Xbg(transp_bg_groups)
call <SID>FgGray(gray_fg_groups)
call <SID>BgBlack(black_bg_groups)
