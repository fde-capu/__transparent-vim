" __transparent
" Author - fde-capu
" License - © 2024 WTFPL, Do What the Fuck You Want to Public License. - http://www.wtfpl.net/

let g:colors_name = "__transparent"

set background=dark
" hi clear
" syntax reset

fun <SID>Xbg(groups)
	for group in a:groups
		let fgcolor = synIDattr(synIDtrans(hlID(group)), "fg")
		exec "hi " . group . " ctermbg=none"
		if fgcolor != ""
			exec "hi " . group . " ctermfg=" . fgcolor
		endif
	endfor
endfun

fun <SID>Xgray(groups)
	for group in a:groups
		exec "hi " . group . " cterm=none"
		exec "hi " . group . " ctermfg=8"
	endfor
endfun

fun <SID>Xblack(groups)
	for group in a:groups
		exec "hi " . group . " cterm=none"
		exec "hi " . group . " ctermfg=0"
	endfor
endfun

hi StatusLineTerm ctermbg=None
hi StatusLineTermNC ctermbg=None

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
\ "Normal"
\ ]

let transp_gray_groups = [
\ 'Normal',
\ "StatusLineNC",
\ "StatusLine",
\ "VertSplit",
\ "TabLine",
\ "TabLineFill",
\ 'Normal'
\ ]

let black_groups = [
\ "VertSplit"
\ ]

call <SID>Xbg(transp_bg_groups)
call <SID>Xgray(transp_gray_groups)
call <SID>Xblack(black_groups)
