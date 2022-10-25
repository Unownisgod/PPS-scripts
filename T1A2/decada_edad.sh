if [ $# -ge 1 ]; then #Comprueba si contiene al menos 1 argumento
    if [ $1 -ge 15 ]&&[ $1 -le 60 ]; then #Comprueba que la edad introducida está entre 15 y 60
        birthyear=$(("$(date +%Y)"-$1)) #Calcula el año de nacimiento
        if [ $(($birthyear%10)) -gt 1 ]; then
            decade=$(($birthyear-(($birthyear%10))))
        else
            decade=$(($birthyear-10-(($birthyear%10))))
        fi
    else
        echo "Debe introducur un número entre 15 y 60"
    fi
    echo "Si naciste en $birthyear, naciste en la década de $decade"
else
   echo 'Debe introducir al menos 1 parámetro'
   exit 1
fi
