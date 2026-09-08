set -l color00 '#282828'
set -l color01 '#da4939'
set -l color02 '#A5C261'
set -l color03 '#e8bf6a'
set -l color04 '#6d9cbe'
set -l color05 '#967efb'
set -l color06 '#89AF90'
set -l color07 '#E6E1DC'
set -l color08 '#83ABC8'
set -l color09 '#f92672'
set -l color0A '#A5C261'
set -l color0B '#ffc66d'
set -l color0C '#6d9cbe'
set -l color0D '#d0d0ff'
set -l color0E '#A1BFA6'
set -l color0F '#EAE6E1'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
