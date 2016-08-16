checkout:
	./swift/utils/update-checkout

docker:
	docker run -it --privileged \
  	-v /Users/eyeplum/Projects/swift.org/:/swift.org \
		eyeplum/swift-foundation-dev \
  	/bin/bash 

docker-dev:
	docker run -it --privileged \
  	-v /Users/eyeplum/Projects/swift.org/:/swift.org \
		eyeplum/swift-foundation-dev:dev \
  	/bin/bash 

compile:
	swift/utils/build-script -R --xctest --foundation -j1

test:
	LD_LIBRARY_PATH=./build/Ninja-ReleaseAssert/foundation-linux-x86_64/Foundation/:./build/Ninja-ReleaseAssert/xctest-linux-x86_64/ \
		./build/Ninja-ReleaseAssert/foundation-linux-x86_64/TestFoundation/TestFoundation

