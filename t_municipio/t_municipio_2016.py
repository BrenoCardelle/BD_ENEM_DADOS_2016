#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
from script_limpeza import tirar_duas_virgulas, trocar_sigla

arquivoentrada = open('microdados_enem_2016.csv', 'r')
arquivosaida = open('t_municipio_2016.csv','w')

# Extraindo os dados do csv de acordo com a planilha de dicionario de dados
for linha in arquivoentrada:
    texto = linha.split(";")

    arquivosaida.writelines(texto[2] + "," + texto[3] + "," + texto[5]+'\n')
    arquivosaida.writelines(texto[21] + "," + texto[22] + "," + texto[24]+'\n')
    arquivosaida.writelines(texto[84] + "," + texto[85] + "," + texto[87]+'\n')

arquivoentrada.close()
arquivosaida.close()

# Chamando a "funcao tirar_duas_virgulas"
arquivo='t_municipio_2016.csv'
tirar_duas_virgulas(arquivo)

# Chamando a funcao "trocar_sigla"
arquivo1='t_municipio_2016_1.csv'
trocar_sigla(arquivo1)

# Deletar arquivo
os.remove(arquivo)
os.remove(arquivo1)
