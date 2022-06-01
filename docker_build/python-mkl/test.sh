docker run -d --name test_container $1 
docker exec test_container apt --version