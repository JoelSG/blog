cat foo.csv | 
sed 's/"//g' | 
head -n 48 | 
tail -n 47 | 
sed 's/,NA//g' | 
sed 's/*//g' | 
cut -d ',' -f2-14 | 
cut -c 3- | 
awk -F ',' '{for(i = 2; i<=NF; i++) print $i "/" $1}' | 
cut -d '/' -f1-3 | 
head -n 559 > fixedfoo
