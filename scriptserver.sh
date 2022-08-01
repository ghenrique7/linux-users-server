#! /bin/bash

echo "Criando diretórios..."

mkdir public/
mkdir java/
mkdir php/
mkdir csharp/

echo "Criando grupos..."

groupadd GRP_JAV
groupadd GRP_PHP
groupadd GRP_CSH

echo "Criando usuarios..."

useradd mariano  -m -s /bin/bash -G GRP_JAV
useradd ana  -m -s /bin/bash -G GRP_JAV
useradd jorge  -m -s /bin/bash -G GRP_JAV

useradd gabriel  -m -s /bin/bash -G GRP_PHP
useradd henrique  -m -s /bin/bash -G GRP_PHP
useradd coelho  -m -s /bin/bash -G GRP_PHP

useradd julia  -m -s /bin/bash -G GRP_CSH
useradd maria  -m -s /bin/bash -G GRP_CSH
useradd joao  -m -s /bin/bash  -G GRP_CSH

echo "Especificando permissões..."

chown root:GRP_JAV java/
chown root:GRP_PHP php/
chown root:GRP_CSH csharp/

chmod 770 java/
chmod 770 php/
chmod 770 csharp/
chmod 777 public/

echo "Criação de arquivos finalizada!"
