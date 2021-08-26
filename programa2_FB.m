function resultado = programa2_FB(f,a,b,n)
  %solo funciona con n par
  
  aux1 = 0;
  aux2 = 0;
  h = (b-a)/n;
  
  for i=1 : n/2
      aux1 = aux1 + double(f(a+2*i-1)*h);
  end
  
  for i=1 : (n-2)/n
      aux2 = aux2 + double(f(a+2*i*h));
  end
  
  resultado = (h/3)*(double(f(a)) + double(f(b)) + 4*aux1) + (2*aux2);  

end