#!/usr/bin/env bash

# Extraindo dados
python t_escola_2016.py

# Colocando null em campo vazio
sed 's/, /,null/g' t_escola_2016_1.csv > t_escola_2016_2.csv

# Eliminando linhas duplicatas
sort -u -k1 t_escola_2016_2.csv > t_escola_2016_final.csv

# Removendo arquivo
rm t_escola_2016_1.csv t_escola_2016_2.csv

# Encontrando o caminho
path1=$(pwd)

# Fazendo o load para a tabela
diretorio='empty'
nome_tabela=escola
arquivo_original=t_escola_2016_final.csv
source /home/bantunes/t_funcoes_shell/t_func_load.sh
load_tabela $path1 $diretorio $nome_tabela $arquivo_original
