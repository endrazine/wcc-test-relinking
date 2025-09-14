all::
	./build-all.sh

test::
	docker run -it --user 0 wcc:24.04 bash -c "./ap2loglevel info"
	docker run -it --user 0 wcc:22.04 bash -c "./ap2loglevel info"
	docker run -it --user 0 wcc:20.04 bash -c "./ap2loglevel info"
	docker run -it --user 0 wcc:18.04 bash -c "./ap2loglevel info"
	docker run -it --user 0 wcc:16.04 bash -c "./ap2loglevel info"
	docker run -it --user 0 wcc:alpine-test bash -c "./ap2loglevel info"
