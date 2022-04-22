


build:
	docker build -t ren_rust_centos7:0.0.1 ./centos7
build-slim:
	# docker build -t ren_rust_centos7:0.0.1 ./centos7
	mkdir -p ./slim 
	# docker-slim build --dockerfile Dockerfile --http-probe=false --copy-meta-artifacts ./slim ./centos7