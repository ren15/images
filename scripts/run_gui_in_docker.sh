docker run -it --rm \
	--user $UID:$UID \
	-v ${PWD}:/home/wr \
	-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
	-v /etc/passwd:/etc/passwd:ro \
	-w /home/wr \
	-e DISPLAY=$DISPLAY \
	clion-container-image /home/wr/clion-2022.1/bin/clion.sh