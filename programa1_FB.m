function tablaR = programa1_FB(f,a,b,n)
    n = n+1;
    tablaR = zeros(n,n);    
    
    % Primer elemento
    tablaR(1,1) = ((double(f(a))+double(f(b)))/2)*(b-a);
    
    % Primera columna    
    for i=2:n  
        h = (b-a)/2^(i-1);
        aux = 0;
        for k=1:2^(i-2)
            aux = aux + double(f(a+(2*k-1)*h));
        end
        tablaR(i,1) = (tablaR(i-1,1)/2) + aux*h;
    end
    
    % Resto de la tabla
    for j=2:n
        for i=j:n
            tablaR(i,j) = tablaR(i,j-1) + (tablaR(i,j-1)-tablaR(i-1,j-1))/(4^(j-1)-1);
        end
    end
end