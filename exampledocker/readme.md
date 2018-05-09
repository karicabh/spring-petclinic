cd ..

docker volume create data 

docker build -t=karic/mvn exampledocker/prebuild
 
docker build -t=karic/mvnbld .
docker run  -v data:/data karic/mvnbld

docker build -t=karic/deploy exampledocker/deploy
docker run  -p 8080:8080 -v data:/data karic/deploy