IFS='-'
if [ $# -eq 0 ]; then
echo "No se han introducido parámetros"
    exit 1
fi
echo "$*"