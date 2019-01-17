function fish_user_key_bindings
	bind \cf forward-word
	bind \cb backward-word

	bind \e\[1\;5C nextd-or-forward-word
	bind \e\[1\;5D prevd-or-backward-word
end
