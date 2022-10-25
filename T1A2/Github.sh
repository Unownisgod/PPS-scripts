if [ $# -ge 1 ]; then
    git add ..
    git commit -m "Automatic update"
else
    echo "Introduce El nombre de usuario como parámetro"
fi
