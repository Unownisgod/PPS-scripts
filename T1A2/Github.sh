if [ $# -ge 1 ]; then
    git init ..
    git add ..
    git commit -m "initial commit"    
    git show-ref
    git pull origin master
    git push origin master
else
    echo "Introduce El nombre de usuario como parámetro"
fi
