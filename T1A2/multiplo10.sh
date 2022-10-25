if [ $# -ge 1 ]; then #comprueba si se han introducido parámetros
    if (($1%10)) ; then #Comprueba si es múltiplo
        echo "$1 no es múltiplo de 10"
    else
        echo "$1 es múltiplo de 10"
    fi
else
    echo "Debe introducir al menos 1 argumento"
fi
