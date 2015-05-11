for font in "Serif"
do
  font="DejaVu $font"
  fontCrunch=${font//[[:blank:]]/}
  ~/git/tesseract-ocr/training/text2image --text=train/pcm-examples.txt --outputbase=./tmp-train/img/pcm.$fontCrunch.exp0 --font="$font" --fonts_dir=/usr/share/fonts/truetype/dejavu/
done
