if [ $# -ge 1 ]; then
    git config --local user.name "$1"
    git init ..
    git add ..
    git commit -m "initial commit"    
    git show-ref
    git push origin main
else
    echo "Introduce El nombre de usuario como parámetro"
fi
