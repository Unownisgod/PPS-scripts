if [ $# -ge 1 ]; then #Comprueba si se le han pasado parámetros
    for ((i = 1; i < $(cat /etc/passwd | wc -l); i++)); do #Itera una vez por cada usuario
        user=$(cat /etc/passwd | cut -d $'\n' -f $i | cut -d ':' -f 1)
        info=$(cat /etc/passwd | cut -d $'\n' -f $i | cut -d ':' -f 1,3,4,6)

        if [ $user = $1 ]; then #Si el parámetro indicado coincide con un usuario imprime su nombre de usuario, uid, gid y directorio de trabajo
            echo $info
        fi
    done
else #Si no se le dan parámetros da error
    echo "debe introducir al menos un parámetro"
    exit 1
fi
