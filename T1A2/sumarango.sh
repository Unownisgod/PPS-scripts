function forc { #for tipo C
    result=0
    for ((i = $n1; i <= $n2; i++)); do #Suma todos los elementos desde $1+1 hasta $2
        result=$(($result + $i))
    done
    echo $result
}

function forb { #for tipo Bash
    result=0
    for i in $(seq $n1 $n2); do #Suma todos los elementos desde $1 hasta $2 mediante seq
        result=$(($result + $i))
    done
    echo $result

}

if [ $# -ge 2 ]; then #Comprueba si se le han pasado al menos 2 argumentos
    if [ $1 -le $2 ]; then #Comprueba si $1 es mayor que $2; si no es así se invierte el orden
        n1=$1
        n2=$2
    else
        n1=$2
        n2=$1
    fi
    forb
    forc
else
    echo "debe introducir dos números"
    exit 1
fi
