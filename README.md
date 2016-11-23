# swift-foundation-dev

Dockerfile for building Docker image with full development dependencies for `swift-corelibs-foundation`.

## Howto

To build or test `swift-corelibs-foundation`, first pull this image from docker hub:

```
docker pull eyeplum/swift-foundation-dev
```

Make sure the Swift.org projects is already cloned somewhere on your host machine.

Then you can start a new container with a shared docker _Data volume_ that contains the Swift.org projects:

```
docker run -it \
    -v <path to swift.org projects>:<path to access data volume in container> \
    eyeplum/swift-foundation-dev \
    /bin/bash
```

In my experience, at least 8GB of memory is needed for building Swift under `-j1`, but the default memory is 2GB for docker containers.

So make sure you tweak the configurations before jump into the container and build Swift, otherwise you may encounter an error similar to this:

```
clang: error: unable to execute command: Killed

clang: error: linker command failed due to signal (use -v to see invocation)

ninja: build stopped: subcommand failed.
```

Here is a [stackoverflow answer](http://stackoverflow.com/a/34598900/1258521) for how to do that.

## About Docker for Mac Beta

I've been trying to use `Docker for Mac Beta` instead of `Docker Toolbox`, as `Docker for Mac` is now the recommanded tool to use docker on macOS.

Unfortunately, I found `Docker for Mac Beta` hangs (alot) in situations like out of memory, I/O error, etc. On contrast, `Docker Toolbox` will always responds with a proper error when one of these situation happens.

So I recommand to use `Docker Toolbox` for now as it seems to be more reliable.

