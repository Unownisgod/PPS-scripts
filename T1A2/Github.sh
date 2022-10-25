if [ $# -ge 1 ]; then
    git config user.name    git init ..
    git add ..
    git commit -m "Automatic update"    
    git show-ref
    git push origin main
else
    echo "Introduce El nombre de usuario como parámetro"
fi
