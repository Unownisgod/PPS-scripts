if [ -e "$1" ]
    then
    echo "El directorio ya existe"
    exit 1
else
    mkdir $1
    if [ $? -eq 0 ]
        then
        echo "El directorio se ha creado correctamente"
    else
        echo "Ha ocurrido un error al crear el directorio"
    fi
    cp $2 "$1"
fi