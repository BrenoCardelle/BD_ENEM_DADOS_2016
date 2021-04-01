#!/usr/bin/env bash

# Extraindo os dados
python t_preenche_2016.py

# Substituindo "\r\n" por "\n"
python t_preenche_2016_1.py

# Tirando "\n" do terceiro campo
python t_preenche_2016_2.py

# Excluindo os arquivos
rm t_preenche_2016.csv t_preenche_2016_1.csv

# Caminho
path1=$(pwd)

# Fazendo o load para a tabela
pasta="t_preenche_2016"
arquivo_original="t_preenche_2016_final.csv"
arq_final="t_preenche_2016_"
source /home/bantunes/t_funcoes_shell/t_func_split.sh
split_arquivo $path1 $pasta $arquivo_original $arq_final

# Removendo arquivo
rm t_preenche_2016_final.csv

# Fazendo o load para a tabela
diretorio="t_preenche_2016"
nome_tabela="preenche"
arquivo_original="empty"
arquivo_final="t_preenche_2016_"
source /home/bantunes/t_funcoes_shell/t_func_load.sh
load_tabela $path1 $diretorio $nome_tabela $arquivo_original $arquivo_final
