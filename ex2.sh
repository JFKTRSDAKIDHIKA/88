grep -E 'a.*a' /usr/share/dict/words | grep -v "s$" | sed -E 's/.*(..)$/\1/' | sort | uniq -c | sort -r | head -3

grep -E 'a.*a' /usr/share/dict/words | grep -v "s$" | sed -E 's/.*(..)$/\1/' | sort | uniq | wc -l               
# sed 的替换命令，s 表示“substitute”（替换）。它的语法是 s/正则表达式/替换文本/，用指定的替换文本替换匹配的部分。
