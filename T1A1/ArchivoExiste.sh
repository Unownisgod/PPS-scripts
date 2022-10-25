if [ $# -eq 0 ]
then
echo "No se han introducido parámetros"
exit 1
elif [ -e "$1" ] 
then
echo "El directorio o archivo ya existe"
else
echo "El directorio o archivo no existe"
fi