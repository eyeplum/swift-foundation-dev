# swift-foundation-dev
Dockerfile for building Docker image with full development set prepared for `swift-corelibs-foundation`.

## Howto
This docker image only contains development dependencies for swift.org projects.

First, pull the image from docker hub:

```
$ docker pull eyeplum/swift-foundation-dev
``` 

Then clone all the swift.org projects.

After swift.org projects are cloned, run the image in a container and add the cloned projctes as a data volume:

```
$ docker run -v <path to swift.org projects>:<container path> \
			-it \ 
			swift-foundation-dev \
			/bin/bash 
```

In the container, you can then build/test `swift-corelibs-foundation`.