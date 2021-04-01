#!/usr/bin/env bash

# Executando
python t_contem_2016.py

# Encontrando o caminho
path1=$(pwd)

# Fazendo o load para a tabela
diretorio='empty'
nome_tabela=contem
arquivo_original=t_contem_2015_final.csv
source /home/bantunes/t_funcoes_shell/t_func_load.sh
load_tabela $path1 $diretorio $nome_tabela $arquivo_original
