rm -rf java-online-banking.war
jar -cvf java-online-banking.war * 
docker build -t javaapp .
docker-compose up -d
