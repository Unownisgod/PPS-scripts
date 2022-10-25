month=$(date +%m)
if [ $month -eq 1 ] || [ $month -eq 3 ] || [ $month -eq 5 ] || [ $month -eq 7 ] || [ $month -eq 8 ] || [ $month -eq 10 ] || [ $month -eq 12 ]; then    #Comprueba que sea el mes 1, 3, 5, 7, 8, 10 o 12, ya que estos meses tienen 31 días
    days=31
elif [ $month -eq 2 ]; then #Comprueba si el mes es 2, ya que este mes tiene 28 días
    days=28
else #Si el mes no está entre los anteriores tiene 30 días
    days=30
fi
echo "Estamos en $(date +%B), un mes con $days días"
