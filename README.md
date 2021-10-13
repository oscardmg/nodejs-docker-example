# Link tutorial
https://www.thisdot.co/blog/getting-started-with-docker

# create build image
```shell
docker build -t node-express .
```

# run image
```
docker run --rm -dp 3000:3000 --name node-express node-express .
```

