Step by step how to run:

1. Build phpmyadmin image docker build --tag phpmyadmin . (optional for self built)
2. Run official mysql container: *docker run --name mysql -e MYSQL_ROOT_PASSWORD=mysecretpassword -d mysql:5.7.5-m15*
3. Run phpmyadmin: *docker run --rm --link mysql:mysql -p 9000:80 mssio/phpmyadmin:4.3.10*
4. Or you can use host instead of link *docker run --rm --add-host mysql:192.168.33.17 -p 9000:80 mssio/phpmyadmin:4.3.10*
