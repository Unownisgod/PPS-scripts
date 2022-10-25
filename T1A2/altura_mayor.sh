if [ $# -eq 3 ]; then #Comprueba que se han introducido 3 argumentos
    if [ $1 -ge $2 ]; then #Compara los argumentos
        if [ $1 -ge $3 ]; then
            echo "la mayor altura es $1"
        else
            echo "la mayor altura es $3"
        fi
    elif [ $2 -ge $1 ]; then
        if [ $2 -ge $3 ]; then
            echo "la mayor altura es $2"
        else
            echo "la mayor altura es $3"
        fi
    elif [ $3 -ge $1 ]; then
        if [ $3 -ge $2 ]; then
            echo "la mayor altura es $3"
        else
            echo "la mayor altura es $1"
        fi
    fi
else
    echo "Debe introducir 3 argumentos"
fi
