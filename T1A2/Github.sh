if [ $# -ge 1 ]; then #Comprueba si se le ha pasado algún parámetro
    git config --global user.email "$1" #introduce el nombre de usuario de git
    git init ..
    git add ..
    git commit -m "Automatic update"    
    git show-ref
    git push origin main
else
    echo "Introduce El nombre de usuario como parámetro"
fi
