function dbash
	if test $argv[1] = "here"
		set args (echo $argv | sed -e 's/^here //g')
		podman run --rm -it --entrypoint=/bin/bash -v $PWD:/host -w /host "docker.io/$args"
	else
		podman run --rm -it --entrypoint=/bin/bash "docker.io/$argv"
	end
end
