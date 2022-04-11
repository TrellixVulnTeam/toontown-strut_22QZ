for f in $(find ./ -name '*.png');
do
FILEII="../hd-textures/textures/$(basename $f)"
echo processing $f
cp $FILEII $f
done

for f in $(find ./ -name '*.jpg');
do
FILEII="../hd-textures/textures/$(basename $f)"
echo processing $f
cp $FILEII $f
done

for f in $(find ./ -name '*.rgb');
do
FILEII="../hd-textures/rgbs/$(basename $f)"
echo processing $f
cp $FILEII $f
done