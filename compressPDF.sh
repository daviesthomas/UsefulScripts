# This script compresses pdfs
# useful before uploading to gdrive etc.
# NOTE: this overwrites the original file in-situ.
# change /ebook to /printer for higher quality images...
# usage:
#  bash compressPDF.sh folderOfPdfs/*.pdf
#  bash compressPDF.sh myPDF.pdf


for file in "$@"
do
    gs -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook -q -o output.pdf $file
    mv output.pdf $file
done
