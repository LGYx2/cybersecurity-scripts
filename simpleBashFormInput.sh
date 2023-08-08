exercicio 1

#!/bin/bash

echo "Bem-vindo ao formulário de inscrição para cursos ECCNDP e ECCNPTP!"

read -p "Insira o seu nome: " nome
read -p "Insira a sua idade: " idade
read -p "Insira o sexo (M/F): " sexo

if (( idade < 18 )); then
    echo "Lamentamos, estudantes menores de 18 anos não podem ser aceitos."
    exit 1
fi

echo "Escolha o curso desejado:"
echo "1. ECCNDP"
echo "2. ECCNPTP"

read -p "Digite o número do curso desejado (1 ou 2): " curso_opcao


if [[ "$curso_opcao" != "1" && "$curso_opcao" != "2" ]]; then
    echo "Opção inválida. Por favor, digite 1 ou 2."
    exit 1
fi


if [[ "$curso_opcao" == "1" ]]; then
    curso_nome="ECCNDP"
else
    curso_nome="ECCNPTP"
fi

echo "Escolha a modalidade do curso:"
echo "1. Presencial"
echo "2. Remota"

read -p "Digite o número da modalidade desejada (1 ou 2): " modalidade_opcao

if [[ "$modalidade_opcao" != "1" && "$modalidade_opcao" != "2" ]]; then
    echo "Opção inválida. Por favor, digite 1 ou 2."
    exit 1
fi

if [[ "$modalidade_opcao" == "1" ]]; then
    modalidade_nome="presencial"
else
    modalidade_nome="remota"
fi

echo "Parabéns, $nome! Sua inscrição no curso $curso_nome na modalidade $modalidade_nome foi concluída com sucesso."




