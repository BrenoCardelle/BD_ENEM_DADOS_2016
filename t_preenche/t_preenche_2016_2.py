#!/usr/bin/python
# -*- coding: utf-8 -*-
import os

arquivoentrada = open('t_preenche_2016_1.csv', 'r')
arquivosaida = open ('t_preenche_2016_final.csv', 'w')

if not os.path.exists("t_preenche_2016"):
        os.makedirs("t_preenche_2016")


for linha in arquivoentrada:
    texto = linha.split(",")

    if texto[2] != '\n' and texto[2] != '\r\n':
        arquivosaida.writelines (texto[0]+","+texto[1]+","+texto[2])

arquivoentrada.close()
arquivosaida.close()
