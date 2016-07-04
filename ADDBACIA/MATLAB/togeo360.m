function [ new_coord ] = togeo360( old_coord , opcao )
% passa longitude de 0 a 360 para -180 a 180 e vice versa
% nova_coordenada=togeo360 ( antiga_coordenada, opcao)
%    opcao =1   passa de -180a180 para 0a360 
%    outars opcoes vice-versa
% 
if (opcao ==1 )
    if ( old_coord < 0)
        new_coord=old_coord+360;
    end
else
    if (x> 180)
        new_coord=old_coord-360;
    end
        
        
    
end

    

end

