if [ $# -ge 1 ]; then #Comprueba que se haya pasado al menos un parámetro
    timestamp=$(date +%d%m%Y)
    tar -cf "copia_scripts_${timestamp}.tar" "$1" #Crea el archivo con los scripts de la carpeta indicada
else #Si no se le dan parámetros da error
    echo "debe introducir al menos un parámetro"
    exit 1
fi