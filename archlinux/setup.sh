#/usr/bin/sh

#sed -i 's/^#\.*\(ru_RU.U.*\)$/\1/' /etc/locale.gen

#echo "ru_RU.UTF-8 UTF-8" >> /etc/locale.gen

#locale-gen

#ln -sf /usr/share/zoneinfo/Asia/Irkutsk /etc/localtine
echo LANG=ru_RU.UTF-8 > /etc/locale.conf
echo LANGUAGE="ru_RU:en_US:en:C" >> /etc/locale.conf

#yaourt -Syua --noconfirm
#pacman -Scc --noconfirm

rm -rf /build

#REMOVABLES=$(pacman -Qqtd) || true
#
#if [ -n "$REMOVABLES" ]; then
#   pacman -Rns --noconfirm $REMOVABLES
#fi


