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
�l�`macsn.sh �V_O�P���lV�����q�*.Q4>�����]Xo�-K�EE@���o�A�Q���1t�'����7ꃉ67͹���ι��=�m!i�2�. �L	�I�ŀ�K��g���ܥW+�fW+w��Oݫ�������w���ݏ7W+��8!�������>�_~�P�2�s8�l�7G���_���wl ���mim5[�f�u���g��߅�լ6W���hO�/~���`w�z5��"!c��1ʆA<D��0���`�v\3��N&%6Q,Bb��h2 ��9��ٔS !#�َ�
�L�^�
�u�$%%(��\��qm�@�!�8�!��q�t�"�ĲL+��uP���i�d������nz����g`��g�!�9#�{���و�? d�9��] ���$���4a�̇��f��]�'��8a�N�	ہ!���3G�T�StoW�vt�b)�N�b�" R/#�@�Q{��P�zi�_�N�U�i�=���+m"a��E����v=�0m��@������/Bç�{���7��x��,gKb"�@���\D|�4�����d�	���K���T�f��#�԰Ј5��2П�(�&쯭��`��bk>x���Av���o���=��$a:��|�!R�ɿי���/oKo��@�j�3��S�p�����*�26���ŧ����'̄��q���tR�d>v��IZP��k��n��j�|;��l�]x�rq�����9�['B�������2MG��8g�?��ŀ����7��/��/���W�=fB��b��\�޹ꍥj�v������D�܍��(z�Ga��x���
  