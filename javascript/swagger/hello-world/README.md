# Sample project using swagger, co, connect, docker

# Docker instructions

1) build Docker image

```
$ docker build -t <username>/<image-name>
```

You should see the image when you run:

```
$ docker images
```

2) run Docker container

```
$ docker run -p 3000:3000 <username>/<image-name>
```

3) check it running

```
$ docker ps
```

**NOTE**: dont forget to:

```
$ eval $(docker-machine env default) # or another env
```

before using the **docker** command
