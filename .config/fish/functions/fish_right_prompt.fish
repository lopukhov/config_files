function fish_right_prompt 

    set -l yellow (set_color -o yellow)

	set -l distro (grep -Po '^ID=\K.*' /etc/os-release)
	set -l name (hostname | grep -Eo 'toolbox')

	if test "$name" = "toolbox"
		echo -n "🧰 "
	end

	echo "$yellow$distro "

	set_color normal
end
