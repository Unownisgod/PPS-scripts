if [ $# -ge 1 ]; then
    git config --global pull.rebase true
    git config --global rebase.autoStash true  
    git init .. -b main
    git remote add origin "https://github.com/Unownisgod/PPS-scripts"
    git remote -v
    git add .
    git commit -m "First commit"

else
    echo "Introduce El nombre de usuario como parámetro"
fi
