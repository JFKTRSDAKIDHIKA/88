grep -i 'a.*a.*a' /usr/share/dict/words | \
grep -iv 's$' | \
tr 'A-Z' 'a-z' | \
sed 's/.*\(..\)$/\1/' | \
sort | uniq -c | sort -nr


echo "词尾字母组合的个数:"
grep -i 'a.*a.*a' /usr/share/dict/words | \
grep -iv 's$' | \
tr 'A-Z' 'a-z' | \
sed 's/.*\(..\)$/\1/' | \
sort | uniq | wc -l


grep -i 'a.*a.*a' /usr/share/dict/words | \
grep -iv 's$' | \
tr 'A-Z' 'a-z' | \
sed 's/.*\(..\)$/\1/' | \
sort | uniq > appeared.txt

for c1 in {a..z}; do for c2 in {a..z}; do echo "$c1$c2"; done; done > all_combos.txt

grep -vxFf appeared.txt all_combos.txt


