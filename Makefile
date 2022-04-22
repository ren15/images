


build:
	docker build -t ren_rust_centos7:0.0.1 ./centos7
build-slim:
	docker build -t ren_rust_centos7:0.0.1 ./centos7
	mkdir -p ./slim 
	docker-slim build --http-probe=false --copy-meta-artifacts ./slim ren_rust_centos7:0.0.1