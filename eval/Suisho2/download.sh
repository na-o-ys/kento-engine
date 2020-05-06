gdown https://drive.google.com/u/0/uc?id=12TWZI4Xs_-lgGnNtAWbVjh8vyOEw0qhB -O suisho.zip
mkdir tmp
unzip -j suisho.zip -d tmp
mv tmp/nn.bin .
rm -r tmp suisho.zip