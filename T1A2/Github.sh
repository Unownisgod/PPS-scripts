if [ $# -ge 1 ]; then
    git config --global pull.rebase true
    git config --global rebase.autoStash true  
    git init .. -b main
    git commit -m "First commit"
    git remote add origin "https://github.com/Unownisgod/PPS-scripts"
    git remote -v
    git add .
    git pull -u origin main
    git push "https://github.com/Unownisgod/PPS-scripts"
else
    echo "Introduce El nombre de usuario como parámetro"
fi
