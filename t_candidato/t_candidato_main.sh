#!/usr/bin/env bash

# Executando a extracao de dados
python t_candidato_2015.py

sed 's/,,/,null,/g' t_candidato_2016_1.csv > t_candidato_2016_2.csv
sed 's/, /,null/g' t_candidato_2016_2.csv > t_candidato_2016_3.csv
sed 's/,,/,null,/g' t_candidato_2016_3.csv > t_candidato_2016_final.csv

# Caminho
path1=$(pwd)

# Removendo arquivo
rm t_candidato_2016_1.csv t_candidato_2016_2.csv t_candidato_2016_3.csv

# Fazendo split do arquivo
pasta="t_candidato_2016"
arquivo_original="t_candidato_2016_final.csv"
arq_final="t_candidato_2016_"
source /home/bantunes/bd_enem_dados_2016/t_funcoes_shell/t_func_split.sh
split_arquivo $path1 $pasta $arquivo_original $arq_final

# Removendo arquivo
rm t_candidato_2016_final.csv

# Fazendo o load para a tabela
diretorio="t_candidato_2016"
nome_tabela="candidato"
arquivo_original="empty"
arquivo_final="t_candidato_2016_"
source /home/bantunes/t_funcoes_shell/t_func_load.sh
load_tabela $path1 $diretorio $nome_tabela $arquivo_original $arquivo_final
