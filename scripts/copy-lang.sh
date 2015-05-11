for file in tessdata/eng.*
do
  cp $file tessdata/pcm.${file:13}
done
