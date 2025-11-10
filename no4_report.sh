#!/bin/bash

echo "--- HASIL STATISTIK FILE SISTEM ---" > no4_report.txt
echo "-----------------------------------" >> no4_report.txt
echo "Waktu : $(date)" >> no4_report.txt
echo "" >> no4_report.txt

echo "-Jumlah Folder dan File-" >> no4_report.txt
echo "Jumlah Folder	: $(ls -l | grep '^-' | wc -l)" >> no4_report.txt
echo "Jumlah File	: $(ls -l | grep '^d' | wc -l)" >> no4_report.txt
echo "" >> no4_report.txt

echo "-Ukuran Direktori dan Subfolder-" >> no4_report.txt
du -sh . | awk '{print "Total Direktori Saat Ini : ", $1}' >> no4_report.txt
du -sh */ 2>/dev/null >> no4_report.txt
echo "" >> no4_report.txt

echo "-Berikut 5 File Terbesar-" >> no4_report.txt
du -ah . 2>/dev/null | sort -rh | head -n 5 >> no4_report.txt
echo "" >> no4_report.txt

echo "-Total Baris dan Kata Dari File .txt-" >> no4_report.txt
if ls *.txt &> /dev/null; then
	total_lines=$(cat *.txt | wc -l)
	total_words=$(cat *.txt | wc -w)
	echo "Total File .txt	: $(ls *.txt | wc -l)" >> no4_report.txt
	echo "Total Baris	: $total_lines" >> no4_report.txt
	echo "Total Kata	: $total_words" >> no4_report.txt
else 
	echo "Tidak Ada File .txt Ditemukan!!!" >> no4_report.txt
fi

echo "" >> no4_report.txt
echo "--- Laporan Statistik Selesai Dibuat!!! ---"
