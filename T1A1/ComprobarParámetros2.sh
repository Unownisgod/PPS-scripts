if [ $# -lt 2 ]
then
echo "Debe introducir al menos dos parámetros"
    exit 1
else
    echo "El número de parámetros es: $#"
    echo "los parámetros son: $*"
    exit 0
fi
    echo $?