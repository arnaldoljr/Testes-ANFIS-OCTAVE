% Revisão REDES NEURAIS -  Exer Livro NEURO FUZZY APLICATIONS
% Illustration of various activation functions used in NN's

x = -10:0.1:10; #criar um range de atuaçao
tmp = exp(-x);
y1 = 1./(1+tmp);
y2 = (1-tmp)./(1+tmp);
y3 = x;

#visualizar os dados 
#formas de funcoes diante do comportamento
subplot(231); plot(x, y1); grid on;
axis([min(x) max(x) -2 2]);
title('Logistic Function');
xlabel('(a)');
axis('square');
subplot(232); plot(x, y2); grid on;
axis([min(x) max(x) -2 2]);
title('Hyperbolic Tangent Function');
xlabel('(b)');
axis('square');
subplot(233); plot(x, y3); grid on;
axis([min(x) max(x) min(x) max(x)]);
title('Identity Function');
xlabel('(c)');
axis('square');