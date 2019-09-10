function fish_prompt 
	set -l last_status $status
	echo 

    set -l cyan (set_color -o cyan)
    set -l red (set_color -o red)
    set -l purple (set_color -o purple)
    set -l grey (set_color -o grey)

    set -l arrow "$cyan\$ "
    if test "$USER" = 'root'
        set arrow "$red# "
    end

	set -l pwd $purple(prompt_pwd)
	if not test $last_status -eq 0
		set pwd $grey(prompt_pwd)
	end

	echo -n $pwd
	__terlar_git_prompt
	__fish_hg_prompt
	echo

	echo -n $arrow
	set_color normal
end
