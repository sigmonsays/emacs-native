
sudo apt-get update -qq
sudo apt install -y  libxpm-dev libjpeg-dev libgnutls28-dev libgif-dev
sudo apt install -y  libtiff-dev libacl1-dev libgtk-3-dev libwebkit2gtk-4.0-dev
sudo apt install -y  librsvg2-dev libmagickcore-dev libmagick++-dev
sudo apt install -y  libgpm-dev libselinux1-dev libm17n-dev libotf-dev libsystemd-dev
sudo apt install -y  libncurses-dev texinfo


# For native compilation
codename="$(lsb_release  -sc)" # bionic
if [ "$codename" == "bionic" ] ; then
    sudo apt install -y  libgccjit-8-dev
else # ubuntu20
    sudo apt install -y  libgccjit-10-dev libgccjit0 libgccjit-9-dev
fi
