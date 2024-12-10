journalctl | grep 'Startup finished in' | tail | sed  's/.*in \([0-9]*ms\).*/\1/'
echo "average value"
journalctl | grep 'Startup finished in' | tail | sed -n 's/.*in \([0-9]*\).*/\1/p' | awk '{sum += $1; count++} END {print sum/count}'
echo "max value"
journalctl | grep 'Startup finished in' | tail | sed -n 's/.*in \([0-9]*ms\).*/\1/p' | awk 'BEGIN {max = -Inf} {if ($1 > max) max = $1} END {print max}'
echo "middle value"
journalctl | grep 'Startup finished in' | tail | sed -n 's/.*in \([0-9]*ms\).*/\1/p'| sort -n | awk '{
    count[NR] = $1
}
END {
    if (NR % 2 == 1) {
        print count[(NR + 1) / 2]
    } else {
        mid1 = NR / 2
        mid2 = mid1 + 1
        print (count[mid1] + count[mid2]) / 2
    }
}'

