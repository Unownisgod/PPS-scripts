if [ $# -ge 1 ]; then #Comprueba si se le ha pasado algún parámetro
    if [ $1 -ge 1000 ] && [ $1 -le 9999 ]; then #Conprueba que tiene 4 cifras (está entre 1000 y 9999)
        case $(($1%12)) in #Comprueba el animal en base al módulo del parámetro indicado
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
        exit 1
    fi
else
    echo "debe introducir un año"
    exit 1
fi