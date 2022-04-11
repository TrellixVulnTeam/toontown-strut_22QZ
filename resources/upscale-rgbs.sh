for f in ./textures/*.png; do
	wh=`identify -format '%w''x''%h' $f`
	path="${f%.*}"
	name=$(basename $path)
	rgb=$(find -name "$name"*)
	echo resizing $rgb to $wh
	convert ./rgbs/$rgb -resize $wh ./rgbs/$rgb >/dev/null 2>&1
	echo ok
done
