FROM alvisisme/arm64-android-toolchain
LABEL matainer=alvis<alvisisme@163.com>
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y --no-install-recommends binutils build-essential bison flex byacc

USER root
WORKDIR /out
VOLUME ["/out"]
CMD ["/bin/sh", "/out/build.sh"]