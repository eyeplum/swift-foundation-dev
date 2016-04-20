# swift-foundation-dev
Dockerfile for building Docker image with full development dependencies for `swift-corelibs-foundation`.

## Use this image to develop Swift.org projects

If you want to build / test Swift.org projects, first pull this image from docker hub:

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

In my experience, at least 4GB of memory is needed for building Swift, but the default memory is 2GB for docker machines.

So make sure you tweak the configurations before jump into the container and build Swift, otherwise you may encounter an error similar to this:

```
clang: error: unable to execute command: Killed

clang: error: linker command failed due to signal (use -v to see invocation)

ninja: build stopped: subcommand failed.
```

Here is a [stackoverflow answer](http://stackoverflow.com/a/34598900/1258521) for how to do that.

