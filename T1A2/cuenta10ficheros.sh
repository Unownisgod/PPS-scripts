if [ $# -ge 1 ]; then                              #Conprueba si se le han pasado parámetros
    if [ $(find $1 -type f | wc -l) -gt 10 ]; then #Comprueba si la carpeta tiene al menos 10 ficcheros
        echo "El directorio contiene 10 o más archivos"
    else
        echo 'El directorio contiene menos de 10 archivos'
    fi
else
    echo 'Debe introducir 1 parámtro'
fi
