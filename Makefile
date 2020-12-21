docker: 
	sudo docker build - < Dockerfile --tag try:1.0
	sudo docker run --name try  --rm -v "${CURDIR}":/usr/src/app try:1.0
	
clean:
	sudo docker rmi try:1.0
	sudo rm ./output_main.txt

