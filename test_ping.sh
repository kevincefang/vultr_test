
host_list="host_list.txt"
results="ping_results.txt"
stat="ping_stats.txt"
count=20

echo "##########$(date)" > ${results}
echo "##########$(date)" > ${stat}

for d in `cat ${host_list}`;do
    ping -c ${count} ${d} >> ${results} 2>&1
    tail -n 3 ${results} >> ${stat}
done
