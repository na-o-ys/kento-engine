docker build -t build-yo489 .
docker run -v $(pwd)/out:/out build-yo489
