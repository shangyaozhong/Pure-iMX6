#!/bin/sh
BOARD_DIR="$(dirname $0)"

cp $BOARD_DIR/uEnv.txt $BINARIES_DIR/uEnv.txt

rm -f $TARGET_DIR/etc/init.d/*mpd
rm -f $TARGET_DIR/etc/init.d/*shairport-sync
rm -f $TARGET_DIR/etc/init.d/*upmpdcli
rm -f $TARGET_DIR/etc/init.d/*urandom

DATE=`date +"%d.%m.%Y"`
echo "uprclautostart = 1" > $TARGET_DIR/etc/upmpdcli.conf
echo "friendlyname = UltraRendu" >> $TARGET_DIR/etc/upmpdcli.conf
sed -i "s/ver.<\/span>/Pure $DATE (Rendu ver.)<\/span>/g" $TARGET_DIR/var/www/tabs.php
echo " " >> $TARGET_DIR/var/www/tabs.php
