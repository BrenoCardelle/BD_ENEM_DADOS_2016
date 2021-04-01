# -*- coding: utf-8 -*-
from script_limpeza import remover_parte_estranha, deletar_linha_zero

arquivoentrada = open('microdados_enem_2016.csv', 'r')
arquivosaida = open('t_necessidades_especiais_2016.csv', 'w')

for linha in arquivoentrada:
    texto = linha.split(";")

    arquivosaida.writelines(texto[0] + "," + texto[55] + "," + texto[31] + "," + texto[34] + "," + texto[33] + "," +
                            texto[54] + "," + texto[55] + "," + texto[58] + "," + texto[35] + "," + texto[28] + "," +
                            texto[57] + "," + texto[52] + "," + texto[41] + "," + texto[36] + "," + texto[42] + "," +
                            texto[29] + "," + texto[53] + "," + texto[43] + "," + texto[30] + "," + texto[38] + "," +
                            texto[44] + "," + texto[50] + "," + texto[51] + '\n')

arquivoentrada.close()
arquivosaida.close()
