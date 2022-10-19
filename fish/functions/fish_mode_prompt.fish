function fish_mode_prompt
    set -l purple (set_color -o purple)
    set -l grey (set_color -o grey)
    set -l white (set_color -o white)
    set -l green (set_color -o green)

	switch $fish_bind_mode
		case default
			set -l pwd $green(prompt_pwd)
			echo -n $pwd
			__terlar_git_prompt
			echo
		case insert
			set -l pwd $purple(prompt_pwd)
			echo -n $pwd
			__terlar_git_prompt
			echo
		case replace_one
			set -l pwd $grey(prompt_pwd)
			echo -n $pwd
			__terlar_git_prompt
			echo
		case visual
			set -l pwd $white(prompt_pwd)
			echo -n $pwd
			__terlar_git_prompt
			echo
		case '*'
			echo
	end
	set_color normal
end
