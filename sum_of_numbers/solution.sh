movie() {
system=0;
i=0;

while (( $(echo "scale=20;$2*$i <= ($system+$1)" | bc) ))
do
  let i++;
  system=$(echo "scale=20;$system+$2*($3^$i)" | bc);

  total=$(echo "scale=20;$system+$1" | bc)

  [[ $total == *.* ]] && total=$(( ${total%.*} + 1))

  if [[ $total -eq $(($2*$i)) ]]
  then
    let i++ 
    break;
  fi  

done

echo $i;



}
movie $1 $2 $3
