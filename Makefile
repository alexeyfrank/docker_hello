starter:
	sudo docker run -p 8080:8080 -d -i -t alexeyfrank/test  /bin/bash -c 'cd /tmp/ide_starter/ && node main.js'

ide:
	sudo docker run -p 8080:8080 -i -t alexeyfrank/test node bin/hexlet-ide.js -r .
bash:
	sudo docker run -i -t alexeyfrank/test /bin/bash
build:
	sudo docker build --rm -t alexeyfrank/test .
