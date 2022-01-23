
NPROC := $(shell nproc)


all:
	( cd emacs && ./autogen.sh )
	( cd emacs && ./configure --with-native-compilation --prefix=/usr )
	( cd emacs && make -j$(NPROC) )


clean:
	echo clean
distclean:
	git clean -fqdx

install:
	( cd emacs && make install DESTDIR=$(DESTDIR)/usr )
