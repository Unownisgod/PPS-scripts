if [ $# -ge 1 ]; then #Comprueba si contiene al menos 1 argumento
    if [ $1 -ge 15 ]&&[ $1 -le 60 ]; then #Comprueba que la edad introducida está entre 15 y 60
        birthyear=$(("$(date +%Y)"-$1)) #Calcula el año de nacimiento
        if [ $(($birthyear%10)) -gt 1 ]; then #Si el año no termmina en 0 la década es el año de nacimiento menos la edad terminado en 0
            decade=$(($birthyear-(($birthyear%10))))
        else    #Si no hay que restar 10 años a la década (ej: 2021 entra en la década de los 2020's, mientras que 2020 entra en los 2010's)
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
