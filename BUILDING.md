# Building

Install build deps

    bash deps.sh

Prepare emacs source tree

    bash prep.sh

Build package as usual

    dpkg-buildpackage

Delete untracked files (emacs sources)

    git clean -fqdx



# Installing

     sudo dpkg -i emacs*.deb

Symlinks are needed

     sudo ln -sf /opt/emacs/bin/emacs /usr/local/bin/emacs
     sudo ln -sf /opt/emacs/bin/emacsclient /usr/local/bin/emacsclient
