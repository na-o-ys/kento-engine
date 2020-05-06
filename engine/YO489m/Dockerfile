FROM amazonlinux:2.0.20191016.0

RUN yum install -y gcc gcc-c++ make build-essential git

WORKDIR /work
COPY Makefile Makefile
COPY Makefile.avx2 Makefile.avx2
COPY Makefile.avx512 Makefile.avx512

RUN git clone https://github.com/yunyun0419/YaneuraOu.git && \
    cd YaneuraOu && git checkout 429e34e3da80c9c88b46adbf34deb89c479bb405 && cd ../ && \
    cp Makefile* YaneuraOu/source/

CMD cd YaneuraOu/source && \
    make normal && mv YaneuraOu-by-gcc /out/YO489m-sse42 && make clean && \
    make -f Makefile.avx2 normal && mv YaneuraOu-by-gcc /out/YO489m-avx2 && make clean && \
    make -f Makefile.avx512 normal && mv YaneuraOu-by-gcc /out/YO489m-avx512 && make clean
