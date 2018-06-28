FROM alvisisme/arm64-android-toolchain

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends binutils build-essential bison flex byacc
COPY build.sh /build.sh

VOLUME ["/home/out"]
CMD ["/bin/bash","/build.sh"]

  
