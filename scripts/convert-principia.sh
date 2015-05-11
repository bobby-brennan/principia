for i in `seq 0 718`;
do
  echo "Converting page " $i
  convert -density 300 pdf/principia-1.pdf[$i] -depth 8 img/v1-p$i.tiff
  tesseract -l pcm img/v1-p$i.tiff txt/v1-p$i
done
