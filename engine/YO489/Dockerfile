FROM amazonlinux:2.0.20191016.0

RUN yum install -y gcc gcc-c++ make build-essential git

WORKDIR /work
COPY Makefile Makefile
COPY Makefile.avx2 Makefile.avx2
COPY Makefile.avx512 Makefile.avx512

RUN git clone https://github.com/yaneurao/YaneuraOu.git -b V4.89 && \
    cp Makefile* YaneuraOu/source/

CMD cd YaneuraOu/source && \
    make normal && mv YaneuraOu-by-gcc /out/YO489-sse42 && make clean && \
    make -f Makefile.avx2 normal && mv YaneuraOu-by-gcc /out/YO489-avx2 && make clean && \
    make -f Makefile.avx512 normal && mv YaneuraOu-by-gcc /out/YO489-avx512 && make clean
