if [ $# -ge 1 ]; then
    git init .. -b main
    git add .
    git commit -m "First commit"
    git remote add origin "https://github.com/Unownisgod/PSP-scripts"
    git remote -v
    git push origin main
else
    echo "Introduce El nombre de usuario como parámetro"
fi
