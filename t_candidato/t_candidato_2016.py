# -*- coding: utf-8 -*-

import os

arquivoentrada = open('microdados_enem_2016.csv', 'r')
arquivosaida = open('t_candidato_2016_1.csv', 'w')

for linha in arquivoentrada:
    texto = linha.split(",")

    arquivosaida.writelines(
        texto[0] + "," + texto[2] + "," + texto[12] + "," + texto[83] + "," + texto[20] + ",2," + texto[10] + "," + \
        texto[16] + "," + texto[8] + "," + texto[15] + "," + texto[19] + "," + texto[9] + "," + texto[1] + "," + \
        texto[6] + "," + texto[7] + "," + texto[110] + "," + texto[111] + "," + texto[112] + "," + texto[113] + "," + \
        texto[114] + "," + texto[115] + "," + texto[104] + "," + texto[109]+'\n')

arquivoentrada.close()
arquivosaida.close()

# Criar um diretorio
if not os.path.exists("t_candidato_2016"):
        os.makedirs("t_candidato_2016")
