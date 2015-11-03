// build.sh
#!/bin/bash
./qt4.8.6/configure \
-prefix /home/install/qte4.8.6 \
-release \
-shared \
-fast \
-no-largefile \
-qt-sql-sqlite \
-qt3support \
-no-xmlpatterns \
-no-glib \
-no-phonon \
-no-mmx \
-no-3dnow \
-no-sse \
-no-sse2 \
-svg \
-webkit \
-qt-zlib \
-qt-libtiff \
-qt-libpng \
-qt-libjpeg \
-make libs \
-nomake examples \
-nomake docs \
-nomake demos \
-no-nis \
-no-cups \
-iconv \
-no-dbus \
-no-openssl \
-embedded arm \
-xplatform qws/linux-arm-g++ \
-little-endian \
-qt-freetype \
-depths 16,24,32 \
-qt-gfx-linuxfb \
-qt-gfx-transformed \
-qt-gfx-multiscreen \
-no-gfx-vnc \
-no-gfx-qvfb \
-armfpa \
-qt-mouse-linuxtp \
-qt-mouse-tslib \
-no-mouse-qvfb \
-no-kbd-qvfb \
-DQT_QLOCALE_USES_FCVT \
-I/usr/local/tslib/include \
-L/usr/local/tslib/lib
#-qt-kbd-usb \

exit
    
