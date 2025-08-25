# Dracula theme for Kakoune
# https://draculatheme.com/kakoune
#
# Color palette
# https://spec.draculatheme.com
#
# Template
# https://github.com/mawww/kakoune/blob/master/colors/default.kak
#
# Faces
# https://github.com/mawww/kakoune/blob/master/doc/pages/faces.asciidoc
#
# A fully spec‐compliant theme implementation:
# https://draculatheme.com/visual-studio-code
# https://github.com/dracula/visual-studio-code/blob/master/src/dracula.yml
#
# A list of files to open in Kakoune and VS Code:
# C++ ⇒ https://github.com/mawww/kakoune/tree/master/src
# AsciiDoc ⇒ https://github.com/mawww/kakoune/tree/master/doc

# Color palette ────────────────────────────────────────────────────────────────

evaluate-commands %sh{
	# Standard
	background='282a36'
	foreground='f8f8f2'
	selection='44475a'
	comment='6272a4'
	red='ff5555'
	orange='ffb86c'
	yellow='f1fa8c'
	green='50fa7b'
	purple='bd93f9'
	cyan='8be9fd'
	pink='ff79c6'

	# ANSI
	black='21222c'
	red='ff5555'
	green='50fa7b'
	yellow='f1fa8c'
	blue='bd93f9'
	magenta='ff79c6'
	cyan='8be9fd'
	white='f8f8f2'

	bright_black='6272a4'
	bright_red='ff6e6e'
	bright_green='69ff94'
	bright_yellow='ffffa5'
	bright_blue='d6acff'
	bright_magenta='ff92df'
	bright_cyan='a4ffff'
	bright_white='ffffff'

	# Alpha blending
	cursor_alpha='99'
	selection_alpha='80'

	# UI variants
	# <https://github.com/dracula/visual-studio-code/blob/master/src/dracula.yml#:~:text=UI Variants>
	background_lighter='424450'
	background_light='343746'
	background_dark='21222c'
	background_darker='191a21'

	# Other
	# https://github.com/dracula/visual-studio-code/blob/master/src/dracula.yml#:~:text=other
	non_text="$background_light"

	printf %s\\n "
	# For code
	set-face global value         rgb:$purple  # C++ ⇒ int number = [42];
	set-face global type          rgb:$pink    # C++ ⇒ [int] main() { ... }
	set-face global variable      rgb:$cyan    # Makefile ⇒ [install]:
	set-face global module        rgb:$yellow  # C++ ⇒ #include [<stdio.h>]
	set-face global function      rgb:$green   # https://spec.draculatheme.com#FunctionNames
	set-face global string        rgb:$yellow  # https://spec.draculatheme.com#String
	set-face global keyword       rgb:$pink    # https://spec.draculatheme.com#Keyword
	set-face global operator      rgb:$pink    # Shell ⇒ true [&&] false
	set-face global attribute     rgb:$pink    # C++ ⇒ [enum] Color { ... };
	set-face global comment       rgb:$comment # https://spec.draculatheme.com#Comment
	set-face global documentation rgb:$comment # Rust ⇒ /// Returns 'true'.
	set-face global meta          rgb:$pink    # C++ ⇒ [#include] <stdio.h>
	set-face global builtin       rgb:$cyan+i  # https://spec.draculatheme.com#Support

	# Diffs
	# https://spec.draculatheme.com#sec-Diffs
	set-face global DiffText     rgb:$comment
	set-face global DiffHeader   rgb:$comment
	set-face global DiffInserted rgb:$green,rgba:${green}20 # https://github.com/dracula/visual-studio-code/blob/master/src/dracula.yml#:~:text=diffEditor.insertedTextBackground
	set-face global DiffDeleted  rgb:$red,rgba:${red}50     # https://github.com/dracula/visual-studio-code/blob/master/src/dracula.yml#:~:text=diffEditor.removedTextBackground
	set-face global DiffChanged  rgb:$orange

	# For markup
	set-face global title  rgb:${purple}+b   # AsciiDoc ⇒ = Document title — https://spec.draculatheme.com#MarkupHeading
	set-face global header rgb:${purple}+b   # AsciiDoc ⇒ == Section title — https://spec.draculatheme.com#MarkupHeading
	set-face global mono   rgb:${green}      # AsciiDoc ⇒ 'code' — https://spec.draculatheme.com#MarkupInlineCode
	set-face global block  rgb:${orange}     # AsciiDoc ⇒ [----][code][----] — https://spec.draculatheme.com#MarkupCodeBlockWithoutSyntax
	set-face global link   rgb:${cyan}       # Markdown ⇒ <https://draculatheme.com> — https://spec.draculatheme.com#MarkupLinkUrl
	set-face global bullet rgb:${cyan}       # https://spec.draculatheme.com#MarkupListBulletOrNumber
	set-face global list   rgb:${foreground} # AsciiDoc ⇒ - [item]

	# Builtin faces
	set-face global Default            rgb:${foreground},rgb:${background}      # Editor background
	set-face global PrimarySelection   default,rgba:${pink}${selection_alpha}   # Pink (alpha-blended)
	set-face global SecondarySelection default,rgba:${purple}${selection_alpha} # Purple (alpha-blended)
	set-face global PrimaryCursor      default,rgba:${pink}${cursor_alpha}      # Pink (alpha-blended)
	set-face global SecondaryCursor    default,rgba:${purple}${cursor_alpha}    # Purple (alpha-blended)
	set-face global PrimaryCursorEol   rgb:${background},rgb:${foreground}+fg   # White (full block)
	set-face global SecondaryCursorEol rgb:${background},rgb:${foreground}+fg   # White (full block)
	set-face global MenuForeground     rgb:${foreground},rgb:${selection}       # https://github.com/dracula/visual-studio-code/blob/master/src/dracula.yml#:~:text=editorSuggestWidget.selectedBackground
	set-face global MenuBackground     rgb:${foreground},rgb:${background_dark} # https://github.com/dracula/visual-studio-code/blob/master/src/dracula.yml#:~:text=editorSuggestWidget.background
	set-face global MenuInfo           rgb:${comment}                              # IntelliSense suggestions
	set-face global Information        Default                                          # Contextual help blends with the editor background.
	set-face global Error              rgb:${foreground},rgb:${red}             # https://spec.draculatheme.com#Invalid
	set-face global DiagnosticError    rgb:${red}                                  # https://github.com/dracula/visual-studio-code/blob/master/src/dracula.yml#:~:text=editorError.foreground
	set-face global DiagnosticWarning  rgb:${cyan}                                 # https://github.com/dracula/visual-studio-code/blob/master/src/dracula.yml#:~:text=editorWarning.foreground
	set-face global StatusLine         rgb:${foreground},rgb:${background_dark} # Prefer background dark here — https://github.com/dracula/visual-studio-code/blob/master/src/dracula.yml#:~:text=statusBar.background
	set-face global StatusLineMode     rgb:${green}                                # [insert]
	set-face global StatusLineInfo     rgb:${purple}                               # 1 sel
	set-face global StatusLineValue    rgb:${green}                                # 1 sel param=[42] reg=[y]
	set-face global StatusCursor       rgb:${background},rgb:${foreground}      # Cursor in command mode
	set-face global Prompt             StatusLine                                       # Same as the status line, since they live at the same place.
	set-face global BufferPadding      rgb:${non_text}                             # Kakoune ⇒ set-option global ui_options terminal_padding_fill=yes

	# Builtin highlighter faces
	set-face global LineNumbers        rgb:${non_text}   # Kakoune ⇒ add-highlighter -override global/number-lines number-lines — Prefer non-text here — https://github.com/dracula/visual-studio-code/blob/master/src/dracula.yml#:~:text=editorLineNumber
	set-face global LineNumberCursor   rgb:${foreground} # Kakoune ⇒ add-highlighter -override global/number-lines number-lines -hlcursor
	set-face global LineNumbersWrapped rgb:${background} # Kakoune ⇒ add-highlighter -override global/number-lines number-lines; add-highlighter -override global/wrap wrap
	set-face global MatchingChar       rgb:${green}+uf   # Kakoune ⇒ add-highlighter -override global/show-matching show-matching — https://github.com/dracula/vim/blob/master/colors/dracula.vim#:~:text=MatchParen
	set-face global Whitespace         rgb:${non_text}+f # Kakoune ⇒ add-highlighter -override global/show-whitespaces show-whitespaces
	set-face global WrapMarker         rgb:${non_text}   # Kakoune ⇒ add-highlighter -override global/wrap wrap -marker '↪'

	# Tree-sitter highlighter faces
	set-face global ts_error rgb:${red} # Error

	set-face global ts_diff_plus  rgb:${green}  # DiffInserted
	set-face global ts_diff_minus rgb:${red}    # DiffDeleted
	set-face global ts_diff_delta rgb:${orange} # DiffChanged

	set-face global ts_markup_bold            rgb:${orange}+b # MarkupBold
	set-face global ts_markup_heading         rgb:${purple}+b # MarkupHeading
	set-face global ts_markup_italic          rgb:${yellow}+i # MarkupItalic
	set-face global ts_markup_list_numbered   rgb:${cyan}     # MarkupListBulletOrNumber
	set-face global ts_markup_list_unnumbered rgb:${cyan}     # MarkupListBulletOrNumber
	set-face global ts_markup_list_checked    rgb:${cyan}     # MarkupListBulletOrNumber
	set-face global ts_markup_list_unchecked  rgb:${cyan}     # MarkupListBulletOrNumber
	set-face global ts_markup_raw             rgb:${green}    # MarkupInlineCode
	set-face global ts_markup_raw_inline      rgb:${green}    # MarkupInlineCode
	set-face global ts_markup_link_url        rgb:${cyan}     # MarkupLinkUrl
	set-face global ts_markup_link_uri        rgb:${cyan}     # MarkupLinkUrl
	set-face global ts_markup_link_text       rgb:${pink}     # MarkupLinkText
	set-face global ts_markup_quote           rgb:${yellow}+i # MarkupLinkText
	set-face global ts_markup_raw_block       rgb:${orange}   # MarkupCodeBlockWithoutSyntax
	set-face global ts_markup_heading_marker  rgb:${purple}+b # MarkupHorizontalRule

	set-face global ts_variable_builtin rgb:${purple}+i # InstanceReservedWords

	set-face global ts_comment       rgb:${comment} # Comment
	set-face global ts_comment_line  rgb:${comment} # Comment
	set-face global ts_comment_block rgb:${comment} # Comment

	set-face global ts_constant                  rgb:${purple} # Constant
	set-face global ts_constant_character_escape rgb:${pink}   # ConstantEscapeSequences

	set-face global ts_tag       rgb:${pink} # HtmlTags
	set-face global ts_tag_error rgb:${red}  # Error

	set-face global ts_function           rgb:${green}    # FunctionNames
	set-face global ts_variable_parameter rgb:${orange}+i # FunctionParameters
	set-face global ts_attribute          rgb:${green}+i  # Decorators

	set-face global ts_keyword          rgb:${pink} # Keyword
    set-face global ts_keyword_control              rgb:${pink} # Keyword
    set-face global ts_keyword_conditional          rgb:${pink} # Keyword
    set-face global ts_keyword_control_conditional  rgb:${pink} # Keyword
    set-face global ts_keyword_control_directive    rgb:${pink} # Keyword
    set-face global ts_keyword_control_import       rgb:${pink} # Keyword
    set-face global ts_keyword_control_repeat       rgb:${pink} # Keyword
    set-face global ts_keyword_control_return       rgb:${pink} # Keyword
    set-face global ts_keyword_control_except       rgb:${pink} # Keyword
    set-face global ts_keyword_control_exception    rgb:${pink} # Keyword
    set-face global ts_keyword_directive            rgb:${pink} # Keyword
    set-face global ts_keyword_function             rgb:${pink} # Keyword
    set-face global ts_keyword_special              rgb:${pink} # Keyword
    set-face global ts_keyword_storage              rgb:${pink} # Keyword
    set-face global ts_keyword_storage_modifier     rgb:${pink} # Keyword
    set-face global ts_keyword_storage_modifier_mut rgb:${pink} # Keyword
    set-face global ts_keyword_storage_modifier_ref rgb:${pink} # Keyword
    set-face global ts_keyword_storage_type         rgb:${pink} # Keyword
	set-face global ts_keyword_operator             rgb:${pink} # KeywordNew

	set-face global ts_function_special         rgb:${purple} # BuiltInMagicMethodsOrConstants
	set-face global ts_function_builtin         rgb:${cyan}   # BuiltInFunctions
	set-face global ts_type_builtin             rgb:${cyan}+i # Support
	set-face global ts_variable_builtin         rgb:${cyan}+i # Support
	set-face global ts_constant_builtin_boolean rgb:${cyan}+i # Support

	set-face global ts_punctuation_special rgb:${pink}       # SeparatorsReferencesOrAccesors
	set-face global ts_punctuation_bracket rgb:${foreground} # BracketsParensBraces

	set-face global ts_keyword_storage          rgb:${pink}     # Storage
	set-face global ts_type                     rgb:${cyan}+i   # Types
	set-face global ts_keyword_storage_modifier rgb:${pink}     # Modifiers
	set-face global ts_keyword_storage_type     rgb:${orange}+i # GenericTemplatesAndMappedDeclarations

	set-face global ts_string        rgb:${yellow} # String
	set-face global ts_string_regexp rgb:${red}    # StringRegExp

	set-face global ts_variable rgb:${foreground} # Variable
	set-face global ts_property rgb:${foreground} # ObjectKeys

	# Tree-sitter faces not listed in the spec

	set-face global ts_conceal rgb:${foreground}

	"
}
