# CALBACIA

## OBJETIVO 
O OBJETIVO DO SCRIPT CALCBACIA  É DE UM SCRIPT QUE CALCULE,  NO "GRADS",  UMA QUANTIDADE  DENTRO DE UM CONTORNO DE UMA BACIA OU CONTORNO DE UM TERRITÓRIO QUALQUER. A QUANTIDADE PODE SER QUALQUER UMA QUE TENHA NO ARQUIVO CTL.

ENTRADAS:  qualquer arquivo de dados do grads ou netcdf 
                       contornos em formato BLN (  Golden Software Surfer ) 

SAIDAS: A saída padrão são arquivo textos com as quantidades por tempo. 
               Cada contorno gera um arquivo texto diferente.                          


## PREPARANDO  OS ARQUIVOS DE CONTORNOS

No diretório ADDBACIA/BLN  coloque os arquivos com extensão BLN and execute no diretorio MATLAB o script do MATLAB: 

 cria_arquivos_bacias.m  

Os contornos estarão porntos para serem usados no script calcbacia.sh 

Depois no diretorio ADDBACIA execute o script em  bash shell script  

addbacia.sh 

Os arquivos de contornos estão prontos para serem utilizados. 

##  USANDO O  SCRIPT CALCBACIA.GS 

Seja um arquivo grads que tenha a variavel  precipitação (rain) chamado teste.ctl e que também tenha 365 registros diários. 

open teste.ctl 
calcbacia(rain, 365 , raintot )

onde:


rain -> nome da variavel que se deseja o cálculo 
365 -> numero de tempos a processar 
raintot ->   prefixo  para os arquivos de saida

  PREFIXO_CONTORNO.prn 


