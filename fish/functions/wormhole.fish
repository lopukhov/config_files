function wormhole
	podman run --rm -it -v $PWD:/host -w /host wormhole /usr/local/bin/wormhole $argv
end
