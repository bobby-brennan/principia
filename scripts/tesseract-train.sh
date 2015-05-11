for font in "Serif"
do
  font="DejaVu$font"
  tesseract tmp-train/img/pcm.$font.exp0.tif tmp-train/img/pcm.$font.exp0 box.train
done
