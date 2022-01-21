
NPROC := $(shell nproc)

all:
	./autogen.sh
	./configure --with-native-compilation --prefix=/usr
	make -j$(NPROC)
	git checkout Makefile


clean:
	echo clean

install:
	make install DESTDIR=$(DESTDIR)/usr
