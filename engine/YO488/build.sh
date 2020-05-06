docker build -t build-yo488 .
docker run -v $(pwd)/out:/out build-yo488
