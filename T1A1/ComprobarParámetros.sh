if [ $# -gt 0 ]
then
    echo "El número de parámetros es: $#"
    echo "los parámetros son: $*"
    exit 0
else 
    echo "No se han introducido parámetros"
    exit 1
fi
    echo $?