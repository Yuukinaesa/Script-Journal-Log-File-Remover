#!/bin/bash -x
while true # untuk melakukan perulangan
do # untuk menginisiasi program
journalctl --disk-usage # menampilkan informasi penggunaan disk dari semua berkas journalctl
sleep 3s # jeda program selama 3 detik
rm -fr /var/log/journal # menghapus journalctl log
sleep 3s # jeda program selama 3 detik
journalctl --vacuum-size=10M # ruang disk yang digunakan untuk menyimpan journalctl akan dibersihkan sampai berukuran berkisar 10 MB
sleep 3s # jeda program selama 3 detik
systemctl restart systemd-journald # restart journal
sleep 3s # jeda program selama 3 detik
journalctl --disk-usage # menampilkan size dari journal
sleep 1m # jeda program selama 1 menit
done # untuk mengakhiri program
