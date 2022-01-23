
NPROC := $(shell nproc)

all:
	./autogen.sh
	./configure --with-native-compilation --prefix=/usr
	make -j$(NPROC)


clean:
	echo clean
distclean:
	git clean -fqdx

install:
	make install DESTDIR=$(DESTDIR)/usr
