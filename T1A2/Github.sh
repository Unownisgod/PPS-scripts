if [ $# -ge 1 ]; then
    git add ..
    git commit -m "initial commit"    
    git show-ref
    git push origin master
else
    echo "Introduce El nombre de usuario como parámetro"
fi
