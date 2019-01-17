function fish_prompt 
	set -l last_status $status
	echo 

	# User
	# set_color $fish_color_user
	# echo -n (whoami)
	# set_color normal

	# echo -n '@'

	# Host
	# set_color $fish_color_host
	# echo -n (prompt_hostname)
	# set_color normal

	# echo -n ':'

	# PWD
	set_color purple
	echo -n (prompt_pwd)
	set_color normal

	__terlar_git_prompt
	__fish_hg_prompt
	echo

	if not test $last_status -eq 0
		set_color $fish_color_error
	end

	echo -n (set_color purple)'➤'(set_color blue)'➤'(set_color grey)'➤ '
	set_color normal
end
