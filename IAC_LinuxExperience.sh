#!/bin/bash

echo "Criando diretórios..."

# O comando mkdir inicia a criação dos diretórios

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

# Nesse formato os grupos foram criados através do comando groupadd, preparando terreno para a próxima etapa que, iniciada através do comando useradd,
# cria os usuários que serão designados para os grupos de usuários "adm" "ven" e "sec"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

#É importante que o nome dos usuários que vem ao lado do comando useradd sejam escritos em letras minúsculas e sem acentos ou caracteres especiais, 
# somente dentro das "" é que será possível escrever o nome dos usuários utilizando maiúsculas e minúsculas, além de caracteres especiais

#Grupo de usuários ADM

useradd matheus -c "Matheus Marques Caetano" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria Barbosa" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "João Paulo III" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

#Grupo de usuários VEN

useradd leopoldina -c "Leopoldina Oliver" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G  GRP_VEN
useradd dante -c "Dante Alighieri" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

#Grupo de usuários SEC

useradd carlota -c "Carlota Joaquina" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd mario -c "Mario Prada" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rita -c "Rita Lee" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#Aqui trata-se do conjunto de permissão de acessos aos arquivos (diretórios), o 777 por exemplo trata-se de uma das permissões iniciais que permite
#leitura, gravação e acesso para todo e qualquer usuário do sistema

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script executado com sucesso!"
echo "Finalizando..."
echo "Tudo pronto!"



