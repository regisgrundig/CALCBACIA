%
%  CRIA ARQUIVO DE RESOLUÇÕES HORIONTAIS PARA USO 
% COM O SCRIPT cria_arquivos_bacias.m
% 
% Reginaldo.venturadesa@gmail.com 
%
% TODO
% por tudo automatico. basta ajustra resoluçaõ e faria tudo
%
% resolução de 25km 
% [y,x]=ndgrid(-40:0.25:9.75,-80:0.25:-30.25);
%
[y,x]=ndgrid(-40:0.25:9.75,-80:0.25:-30.25);
%
% arquivo de saida
%
pid=fopen('grade_25km_180W180W.prn','w');
fid=fopen('grade_25km_0a360.prn','w');
%
%  
%
[tamx,tamy]=size(x);
 for i=1:tamy
     for j=1:tamx
          xx=togeo360(x(i,j),1); 
          fprintf(pid,'%f %f \n',x(i,j),y(i,j));
          fprintf(fid,'%f %f \n',xx,y(i,j));
          
          
     end
 end
 