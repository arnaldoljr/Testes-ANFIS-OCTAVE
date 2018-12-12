%ANDNOT function using Mcculloch-Pitts neuron
clear;
clc;
%Getting weights and threshold value
disp('Entre com os Pesos');
w1=input('peso w1=');
w2=input('peso w2=');
disp('Entre o  valor de Threshold');
theta=input('theta=');
y=[0 0 0 0];
x1=[0 0 1 1];
x2=[0 1 0 1];
z=[0 0 1 0];
con=1;
while con
  zin=x1*w1+x2*w2;
  for i=1:4
      if zin(i)>=theta
          y(i)=1;
      else
          y(i)=0;
      end
  end
  disp('Output of Net');
  disp(y);
  if y==z
      con=0;
  else
      disp('A rede com problemas para aprender. Entre com novos Pesos e novo Threshold');
      	  w1=input('peso w1=');
      	  w2=input('peso w2=');
      	  theta=input('theta=');
  end
end
disp('Mcculloch-Pitts Net for ANDNOT function');
disp('Pesos do Neuronio');
disp(w1);
disp(w2);
disp('Threshold value');
disp(theta);