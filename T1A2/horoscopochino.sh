if [ $# -ge 1 ]; then
    if [ $1 -ge 1000 ] && [ $1 -le 9999 ]; then
        case $(($1%12)) in
            "0") animal="la rata";;
            "1") animal="el buey";;
            "2") animal="el tigre";;
            "3") animal="el conejo";;
            "4") animal="el dragón";;
            "5") animal="la serpiente";;
            "6") animal="el caballo";;
            "7") animal="la cabra";;
            "8") animal="el mono";;
            "9") animal="el gallo";;
            "10") animal="el perro";;
            "11") animal="el cerdo";;
        esac
        echo "Si naciste en $1, según el horóscopo chino, tu animal es $animal"
    else
        echo "Debe introducir un número de 4 cifras"
    fi
else
    echo "debe introducir un año"
fi