#!/usr/bin/env bash

# Script python para extrair os dados
python t_municipio_2016.py

# Eliminando linhas duplicatas
sort -u -k1 t_municipio_2016_2.csv > t_municipio_2016_final.csv

# Deletando arquivo
rm t_municipio_2016_2.csv

# Pegando o caminho
path1=$(pwd)

# Fazendo o load para a tabela
diretorio='empty'
nome_tabela=municipio
arquivo_original=t_municipio_2016_final.csv
source /home/martins/Documentos/bd_enem_dados_2016/t_funcoes_shell/t_func_load.sh
load_tabela $path1 $diretorio $nome_tabela $arquivo_original
