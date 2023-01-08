echo "Question2 - Number of comics per hero."

$awk -F ',' '(NR > 1) {print $1}' edges_edited.csv | sort | uniq -c
#(NR > 1): to skip the header
#'edges_edited.csv' is the .csv file of edges after pre-processing the dataset; the ',' is replaced with 
#space in both columns 

echo "Question3 - The average number of heroes in comics."

#Calculate the number of heroes for each comic and save it in a new .csv file.

$awk -F ',' '(NR > 1) {print $2}' edges_edited.csv | sort | uniq -c > edge_rslt.csv
#Calcute the average number of heroes 
$awk -F ' ' '{sum+=$1;cnt++}END{print sum/cnt}' edge_rslt.csv
echo "The average number of heroes is equal to 7.596"

