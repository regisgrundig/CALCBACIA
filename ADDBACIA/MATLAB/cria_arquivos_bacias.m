
clear all
%
% pega os arquivos .bln 
%
bacias=dir('./BLN/*.bln');
%
% pega arquivo de controle de resolução 
% criado pelo script cria_pontos_de_grade.m
%
n1=dlmread('grade_25km_180W180W.prn',' ');
n2=dlmread('grade_25km_0a360.prn',' ');

%
% numero de bacias a serem processadas
%
[num_bacias,~]=size(bacias);
%
% processa as bacias
%
for i=1:num_bacias
    disp(['Processando ' bacias(i).name]);
    arquivo=sprintf('./BLN/%s',bacias(i).name);
    m1=dlmread(arquivo,',');
    
    x0=max(m1(:,1));
    x1=min(m1(:,1));
    y0=max(m1(:,2));
    y1=min(m1(:,2));

    if (x1 <= 0) 
        disp('Coordenadas do tipo -180 a 180 encontrado');
        in1=verifica_se_ta_dentro(n1,m1);

        [ii ,jj]=size(in1);
        fid=fopen(strcat('../BACIAS/',strtok(bacias(i).name,'.'),'.bacia'),'w');
        for  j=1:ii
             if (in1(j) == 1)
                fprintf(fid,'%10.4f %10.4f %d\n',n1(j,1),n1(j,2),in1(j));
             end 
        end

    else
        disp('Coordenadas do tipo 0 360 encontrado');
        
        in1=verifica_se_ta_dentro(n2,m1);

        [ii ,jj]=size(in1);
        fid=fopen(strcat('../BACIAS/',strtok(bacias(i).name,'.'),'.bacia'),'w');
        for  j=1:ii
             if (in1(j) == 1)
                fprintf(fid,'%10.4f %10.4f %d\n',n1(j,1),n1(j,2),in1(j));
             end 
        end
        
        
    end
    

end

