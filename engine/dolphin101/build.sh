docker build -t build-dolphin101 .
docker run -v $(pwd)/out:/out build-dolphin101
