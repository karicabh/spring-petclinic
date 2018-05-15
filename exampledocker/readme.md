cd ..

docker volume create data 

 
docker build -t=karic/mvnbld .
#find for a root user where is .m2 located and mount it with -v /host/directory:/container/directory
# -v ~/.m2:/root/.m2
docker run  -v data:/data -v ~/.m2:/root/.m2 karic/mvnbld

docker build -t=karic/deploy exampledocker/deploy
docker run  -p 8080:8080 -v data:/data -v ~/.m2:/root/.m2 karic/deploy
