fish_vi_key_bindings

alias ls=exa
alias cat=bat

set -l name (hostname | grep -Eo 'toolbox')

if test "$name" = "toolbox"
	set fish_private_mode
end
