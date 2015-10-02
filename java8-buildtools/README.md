# How to build

```console
$ docker build -t vorburger:java8-buildtools .
```

# How to use

```console
$ cd selftest
$ docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp vorburger:java8-buildtools javac HelloWorld.java
```

_TODO see ../.../Dockerfile example_


# Background
* https://github.com/docker-library/docs/tree/master/java#compile-your-app-inside-the-docker-container

