scripts/build-training-images.sh
tesseract tmp-train/img/pcm.DejaVuSerif.exp0.tif tmp-train/out/pcm.DejaVuSerif.exp0 box.train
unicharset_extractor tmp-train/img/pcm.DejaVuSerif.exp0.box
shapeclustering -F fonts/dejavusans.font_properties -U unicharset tmp-train/out/pcm.DejaVuSerif.exp0.tr
mftraining -F fonts/dejavusans.font_properties -O tessdata/pcm.unicharset -U unicharset tmp-train/out/pcm.DejaVuSerif.exp0.tr
cntraining tmp-train/out/pcm.DejaVuSerif.exp0.tr
mv shapetable tessdata/pcm.shapetable
mv inttemp tessdata/pcm.inttemp
mv pffmtable tessdata/pcm.pffmtable
mv normproto tessdata/pcm.normproto
rm unicharset
combine_tessdata tessdata/pcm.
