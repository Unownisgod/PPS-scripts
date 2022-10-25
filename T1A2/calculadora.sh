function operandos { #Recoge los números desde la terminal
    echo "Introduce el primer operando"
    read n1
    echo "Introduce el segundo operando"
    read n2
}
function suma { #Realiza la suma de los valores recogidos por operandos
    result=$(($n1+$n2))
    echo $result
}
function resta { #Realiza la resta de los valores recogidos por operandos
    result=$(($n1-$n2))
    echo $result
}
function multiplica { #Realiza la multiplicación de los valores recogidos por operandos
    result=$(($n1*$n2))
    echo $result
}
function divide { #Realiza la división de los valores recogidos por operandos
    result=$(($n1/$n2))
    echo $result
}
function salir { #Sale del programa con código 0
    exit 0
}
function menu { #Muestra el menú
   echo "(1) Sumar 
(2) Restar
(3) Multiplicar
(4) Dividir
(5) Salir"
    read option
    case $option in
        "1") operandos; suma;;
        "2") operandos; resta;;
        "3") operandos; multiplica;;
        "4") operandos; divide;;
        "5") salir;;
        *) menu;;
    esac
}
menu
