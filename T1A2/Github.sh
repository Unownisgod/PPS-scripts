if [ $# -ge 1 ]; then #Comprueba si se le ha pasado algún parámetro
    git config --global user.email "$1" #introduce el nombre de usuario de git
    git init .. #Inicializa el repositorio si fuera necesario
    git add .. #Añade los archivos en la carpeta PPS al repositorio
    git commit -m "Automatic update"     #Hace un commit automático
    git show-ref
    git push origin main #Hace un push
else
    echo "Introduce el nombre de usuario como parámetro"
    exit 1
fi

