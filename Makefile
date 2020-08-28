install:
	docker build . -t pottry_dev

new:
	docker run --rm -it -v `pwd`:/usr/src pottry_dev poetry new --src hello

list:
	docker run --rm -it -v `pwd`:/usr/src pottry_dev poetry config --list

add:
	docker run --rm -it -v `pwd`:/usr/src pottry_dev cd

run:
	docker run --rm -it -v `pwd`/hello:/usr/src pottry_dev poetry run src/hello/hello.py

shell:
	docker run --rm -it -v `pwd`/hello:/usr/src pottry_dev poetry shell