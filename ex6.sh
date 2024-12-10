pup 'table#table1 tr td.rb:nth-child(2) text{}' < wikipedia_data.html | grep '^\([0-9]\+\)$'  > column_2.txt

pup 'table#table1 tr td.rb:nth-child(3) text{}' < wikipedia_data.html > column_3.txt

awk 'NR==1 {min=max=$1} {if($1<min) min=$1; if($1>max) max=$1} END {print "Min:", min, "Max:", max}' column_2.txt

awk 'NR==1 {min=max=$1} {if($1<min) min=$1; if($1>max) max=$1} END {print "Min:", min, "Max:", max}' column_3.txt

paste column_2.txt column_3.txt | awk '{sum1+=$1; sum2+=$2} END {print "Difference of sums:", sum1-sum2}'

