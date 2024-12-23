#!/bin/bash


echo "Digite o primeiro número:"

read a


echo "Digite a operação (+, -, *, /):"

read op


echo "Digite o segundo número:"

read b


if [ "$op" == "+" ]; then

  resultado=$(($a + $b))

elif [ "$op" == "-" ]; then

  resultado=$(($a - $b))

elif [ "$op" == "*" ]; then

  resultado=$(($a * $b))

elif [ "$op" == "/" ]; then

  if [ $b -eq 0 ]; then

    echo "Erro: Divisão por zero!"

    exit 1

  else

    resultado=$(($a / $b))

  fi

else

  echo "Operação inválida!"

  exit 1

fi


echo "Resultado: $a $op $b = $resultado"