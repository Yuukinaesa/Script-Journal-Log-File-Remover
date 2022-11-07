#!/bin/bash -x
while true # untuk melakukan perulangan
do # untuk menginisiasi program
journalctl --disk-usage # menampilkan informasi penggunaan disk dari semua berkas journalctl
sleep 5s # jeda program selama 5 detik
rm -fr /var/log/journal # menghapus journalctl log
sleep 5s # jeda program selama 5 detik
journalctl --vacuum-size=7M # ruang disk yang digunakan untuk menyimpan journalctl akan dibersihkan sampai berukuran berkisar 7 MB
sleep 5s # jeda program selama 5 detik
systemctl restart systemd-journald # restart journal
sleep 5s # jeda program selama 5 detik
journalctl --disk-usage # menampilkan size dari journal
sleep 2m # jeda program selama 2 menit
done # untuk mengakhiri program
