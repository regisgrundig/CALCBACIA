%
%  CRIA ARQUIVO DE RESOLU��ES HORIONTAIS PARA USO 
% COM O SCRIPT cria_arquivos_bacias.m
% 
% Reginaldo.venturadesa@gmail.com 
%
% TODO
% por tudo automatico. basta ajustra resolu�a� e faria tudo
%
% resolu��o de 25km 
% [y,x]=ndgrid(-40:0.25:9.75,-80:0.25:-30.25);
%
[y,x]=ndgrid(-40:0.25:9.75,-80:0.25:-30.25);
%
% arquivo de saida
%
pid=fopen('pontos_de_grade_25km.prn','w');
%
%  
%
[tamx,tamy]=size(x);
 for i=1:tamy
     for j=1:tamx
          fprintf(pid,'%f %f\n',x(i,j),y(i,j));
     end
 end
 