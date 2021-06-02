function fish_prompt 
	set -l last_status $status
	echo 

    set -l cyan (set_color -o cyan)
    set -l red (set_color -o red)

    set -l arrow "$cyan\$ "
    if test "$USER" = 'root'
        set arrow "$red# "
    end

	echo -n $arrow
	set_color normal
end
