# How to use this Jenkins Docker image

To build the image:

```console
$ docker build -t vorburger/yangide-jenkins .
```

To run Jenkins from the image:

```console
$ docker run --rm -p 8080:8080 vorburger/yangide-jenkins
```

To manually create a job via the UI and then login to the image to peek around, e.g. to copy the job definition from:

```console
docker ps
docker exec -it 07c2560dfd92 bash
```

and then

