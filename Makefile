
NPROC := $(shell nproc)

all:
	./autogen.sh
	./configure --with-native-compilation --prefix=/opt/emacs
	make -j$(NPROC)


clean:
	echo clean
distclean:
	git clean -fqdx
	dh_clean

install:
	make install DESTDIR=$(DESTDIR)/opt/emacs
