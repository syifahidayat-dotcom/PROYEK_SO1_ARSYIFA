#!/bin/bash

find . -maxdepth 1 -type f -name "*.txt" -exec mv {} documents/ \;
find . -maxdepth 1 -type f -name "*.png" -exec mv {} images/ \;
find . -maxdepth 1 -type f -name "*.jpg" -exec mv {} images/ \;
find . -maxdepth 1 -type f -name "*.zip" -exec mv {} archives/ \;
find . -maxdepth 1 -type f -name "*.log" -exec mv {} logs/ \;

cp images/kucinggemes.jpg archives/

echo "Organisasi File Selesai"









