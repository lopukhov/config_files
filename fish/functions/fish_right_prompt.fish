function fish_right_prompt 

    set -l yellow (set_color -o yellow)
	set -l name (hostname)

	if test "$name" = "toolbox"
		echo -n "🧰 "
	end

	echo "$yellow$name "

	set_color normal
end
