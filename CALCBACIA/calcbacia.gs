*--------------------------------------------------------------
* CALCBACIA VERSAO 1.0   ->   VEIO DO SCRIPT SIMOP ATÉ 2.0  
* 
* Calcula a soma e média de uma quantidade dentro de um contorno de uma bacia ou região qualquer. 
*
* INPUT:  arquivos criado pelo processo ADDBACIA e um arquivo de dados 
* 
*--------------------------------------------------------------

'open tese.ctl' 

calcbacia(rainc,162)

return 



function calcbacia( vargrads, numtempos , prefixo)  

* 
* variaveis globais de controle de fluxo
*
_id=0
_status=0
_args=""

*
* loop principal 
*
while ( 0=0 )      
*
* abre o arquivo bacias e pega um registro
*
id=getfile(0)

*
*==================================================
*
*
* se tiver </START/> inicia o processo 
*
*say _args
if (_args ="</BACIA/>") 
*
* pega novo registro 
*
id=getfile(1)

*
* pega nome da bacia e quantidade de pontos (lat,lon)
*
bacia=subwrd(_args,2)
numlin=subwrd(_args,4)
debug=subwrd(_args,6) 

if (debug =1) 
dbg="DEBUG ATIVADO"
endif
say "Processando:"bacia" com "numlin" coordenadas "dbg 
*
* inicializa variveis indexadas
*
n=1
t=1
while (t<=numtempos)
valor.t=0
media.t=0
t=t+1
endwhile

*
* processa cada coordenada do arquivo de bacias
*
while ( n <= numlin)
*
* pega novo registro 
*
id=getfile(2)

*
* trata lat e lon 
*
lonxx=subwrd(_args,1)
lonx=lonxx+360
latx=subwrd(_args,2)
'set lon 'lonx
'set lat 'latx
*
* varre no tempo 
* e armazena o valor em variavel indexada
* e acumula no tempo para cada ponto
*  
t=1
while ( t<=numtempos)
'set t 't
'd 'vargrads''
valor=subwrd(result,4)
valor.t=valor.t+valor
if ( debug = 1)
xi=write("debug.prn",lonx' 'latx' 't' 'valor' 'valor.t)
endif

t=t+1
endwhile      
*
* próxima coordenada
*
n=n+1
endwhile
*
*
* ao fim calcula as médias para cada tempo

t=1
while (t<=numtempos)
media.t=valor.t/numlin
*say "--->"media.t"===+"valor.t
t=t+1
endwhile
*
* grava os dados em um arquivo 
*

t=1
while(t<=numtempos)
'set t 't
'q time'
datap=subwrd(result,3)
ano=substr(datap,9,4)
mes=substr(datap,6,3) 
dia=substr(datap,4,2)
hora=substr(datap,1,2)
pi=write("../SAIDAS/"prefixo"_"bacia".prn",ano' 'mes' 'dia' 'hora' 'valor.t' 'media.t)
t=t+1

endwhile



endif       
*
*==================================================
*
*say _args

if (_args ="</END/>")      
say "Fim da operacao"
close ("../UTIL/bacias.dat")
return
endif



endwhile 
close ("../UTIL/bacias.dat")
return 



function getfile()
_id=read("../UTIL/bacias.dat")
_status=sublin(_id,1)   
_args=sublin(_id,2)

if (_status < 0 )
'quit'
endif 
return 


