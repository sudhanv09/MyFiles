sudo apt install libxpm-dev libgif-dev libjpeg-dev libpng-dev libtiff-dev libx11-dev libncurses5-dev automake autoconf texinfo libgtk2.0-dev libgnutls28-dev
sudo add-apt-repository ppa:ubuntu-toolchain-r/ppa
sudo apt install gcc-10 g++-10 libgccjit0 libgccjit-10-dev libjansson4 libjansson-dev
git clone git://git.sv.gnu.org/emacs.git gccemacs
git checkout feature/native-comp
export CC=/usr/bin/gcc-10 CXX=/usr/bin/gcc-10
./autogen.sh
./configure --with-cairo --with-modules --without-compress-install --with-x-toolkit=no --with-gnutls --without-gconf --without-xwidgets --without-toolkit-scroll-bars --without-xaw3d --without-gsettings --with-mailutils --with-native-compilation --with-json --with-harfbuzz --with-imagemagick --with-jpeg --with-png --with-rsvg --with-tiff --with-wide-int --with-xft --with-xml2 --with-xpm CFLAGS="-O3 -mtune=native -march=native -fomit-frame-pointer" prefix=/usr/local
make -j4
make install
