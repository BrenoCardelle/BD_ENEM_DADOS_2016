#!/usr/bin/env bash

# Extraindo dados
python t_realiza_2016.py

# Caminho
path1=$(pwd)

# Fazendo split do arquivo
pasta="t_realiza_2016"
arquivo_original="t_realiza_1.csv"
arq_final="t_realiza_2016_"
source /home/bantunes/t_funcoes_shell/t_func_split.sh
split_arquivo $path1 $pasta $arquivo_original $arq_final

# Removendo arquivo
rm t_realiza_1.csv

# Fazendo o load para a tabela
diretorio="t_realiza_2016"
nome_tabela="realiza"
arquivo_original="empty"
arquivo_final="t_realiza_2016_"
source /home/bantunes/t_funcoes_shell/t_func_load.sh
load_tabela $path1 $diretorio $nome_tabela $arquivo_original $arquivo_final
