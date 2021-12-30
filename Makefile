build:
	docker build -t build_mysql_test .
	
run: 
	docker run -itd --name build_mysql_test -p 3306:3306 build_mysql_test

exec:
	docker exec -it build_mysql_test /bin/bash	

clean:
	docker stop build_mysql_test; docker rm build_mysql_test; docker rmi build_mysql_test

.PHONY: build run clean exec
