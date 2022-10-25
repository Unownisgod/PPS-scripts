month=$(date +%m)
if [ $month -eq 1 ] || [ $month -eq 3 ] || [ $month -eq 5 ] || [ $month -eq 7 ] || [ $month -eq 8 ] || [ $month -eq 10 ] || [ $month -eq 12 ]; then    echo "$month"
    days=31
elif [ $month -eq 2 ]; then
    days=28
else
    days=30
fi
echo "Estamos en $(date +%B) un mes con $days días"
