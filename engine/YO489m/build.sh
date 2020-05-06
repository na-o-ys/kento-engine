docker build -t build-yo489m .
docker run -v $(pwd)/out:/out build-yo489m
