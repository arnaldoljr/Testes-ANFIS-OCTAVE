##Exemplo 2
#segundo modo de criar variaveis fuzzy

## Create new FIS.
a = newfis ('Heart-Disease-Risk', 'sugeno','algebraic_product', 'algebraic_sum', 'min', 'max', 'wtaver');

## Add two inputs and their membership functions. 

a = addvar (a, 'input', 'LDL-Level', [0 300]);

a = addmf (a, 'input', 1, 'Low', 'trapmf', [-1 0 90 130]);
a = addmf (a, 'input', 1, 'Moderate', 'trapmf', [90 130 160 200]); 
a = addmf (a, 'input', 1, 'High', 'trapmf', [160 200 300 301]);

a = addvar (a, 'input', 'HDL-Level', [0 100]);

a = addmf (a, 'input', 2, 'Low', 'trapmf', [-1 0 35 45]);
a = addmf (a, 'input', 2, 'Moderate', 'trapmf', [35 45 55 65]);
a = addmf (a, 'input', 2, 'High', 'trapmf', [55 65 100 101]);


## Add one output and its membership functions.
a = addvar (a, 'output', 'Heart-Disease-Risk', [-2 12]); 

a = addmf (a, 'output', 1, 'Negligible', 'constant', 0);
a = addmf (a, 'output', 1, 'Low', 'constant', 2.5);
a = addmf (a, 'output', 1, 'Medium', 'constant', 5);
a = addmf (a, 'output', 1, 'High', 'constant', 7.5);
a = addmf (a, 'output', 1, 'Extreme', 'constant', 10);

## Plot the input and output membership functions. 

plotmf (a, 'input', 1);
plotmf (a, 'input', 2);
plotmf (a, 'output', 1);
## Add 12 rules and display them in verbose format.

a = addrule (a, [1 1 3 1 1; 1 2 2 1 1; 1 3 1 1 1; 2 1 4 1 1; 2 2 3 1 1;
                 2 3 2 1 1; 3 1 5 1 1; 3 2 4 1 1; 2 2 2 1 1; 1.3 3.3 2 1 2; 
                 3.05 1.05 4 1 2; -3.2 -1.2 3 1 1]);
puts ("\nOutput of showrule(a):\n\n"); 
showrule (a);

## Plot the output as a function of the two inputs. 

gensurf (a);