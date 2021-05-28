function www
	podman run --rm -it -p $argv[1]:80 -v $PWD:/srv/data localhost/www
end
