if [ $# -eq 0 ]
then
echo "No se han introducido parámetros"
elif [ -d "$1" ] 
then
echo "El directorio ya existe"
elif [ -f "$1" ]
then
echo "El archivo ya existe"
else
echo "El archivo no existe"
exit 1
fi