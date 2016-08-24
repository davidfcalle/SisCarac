NOMBRE_CONTENEDOR="prosofi"
NOMBRE_CONTENEDOR_DB=$NOMBRE_CONTENEDOR"db"
NOMBRE_BD="test"

docker run --name prosofidb  \
	-e MYSQL_ROOT_PASSWORD="PROSOFI2015CAR" \
	-e MYSQL_DATABASE="test" \
	-d mysql:5.5

docker build -t prosofi .
docker run --name prosofi \
	    --link prosofidb:prosofidb \
        -p 80:80 \
		-v html:/var/www/html \
	    -d prosofi