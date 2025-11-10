#!/bin/bash

echo "------- MENU PENCARIAN FILE -------"
echo "1. Cari Berdasarkan Nama"
echo "2. Cari Berdasarkan Isi (Konten)"
echo "3. Cari Berdasarkan Ukuran"
read -p "Pilih (1/2/3) : " pilih

if [ $pilih -eq 1 ]; then
	read -p "Masukkan Nama file : " nama
	find . -type f ! -name "no3_search.txt" -name "$nama" | tee no3_search.txt

elif [ $pilih -eq 2 ]; then
	read -p "Masukkan Kata Yang Ingin Dicari : " kata
	grep --exclude="no3_search.txt" -rn "$kata" . | tee no3_search.txt

elif [ $pilih -eq 3 ]; then  
	read -p "Masukkan Ukuran (+100k/-1M) : " uk
	find . -type f ! -name "no3_search.txt" -size "$uk" | tee no3_search.txt

else 
	echo "Pilihan Tidak Sesuai!!!"

fi

echo "Hasil Pencarian Tersimpan Difile : no3_search.txt"
