journalctl -b -1 > boot1.log
journalctl -b -2 > boot2.log
journalctl -b -3 > boot3.log
sed -E 's/^[A-Za-z]{3} [0-9]{1,2} [0-9]{2}:[0-9]{2}:[0-9]{2}//' boot0.log > clean_boot1.log
sed -E 's/^[A-Za-z]{3} [0-9]{1,2} [0-9]{2}:[0-9]{2}:[0-9]{2}//' boot1.log > clean_boot2.log
sed -E 's/^[A-Za-z]{3} [0-9]{1,2} [0-9]{2}:[0-9]{2}:[0-9]{2}//' boot2.log > clean_boot3.log
cat clean_boot0.log clean_boot1.log clean_boot2.log | sort | uniq -c | awk '$1 < 3'
