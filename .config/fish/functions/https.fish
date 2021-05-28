function https
	podman run --rm -it -p $argv[1]:443 -v $PWD:/srv/data localhost/https
end
