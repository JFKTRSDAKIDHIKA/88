debug(){
  for (( i=1; i<=100000; i++ ))
do
  error_info=$( source error.sh )
  if [ $? -eq 1 ]; then
    echo "$i"
    echo "$error_info"
    break
  fi
done
}
