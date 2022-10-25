if [ $# -ge 1 ]; then
    git init ..
    git add ..
    git commit -m "initial commit"    
    git show-ref
    git push origin master
    git branch -b
else
    echo "Introduce El nombre de usuario como parámetro"
fi
