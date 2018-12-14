# Lendo o sistema fuzzy de um arquivo .FIS -  fuzzy inference system (FIS) 
# The indexed rules display in the following format:#

#'<input MFs>, <output MFs>, (<weight>) : <logical operator - 1 (AND), 2 (OR)>' #


## Read the FIS structure from a file.
fis = readfis ('Data/teste1');

## Plot the input membership functions and linear output functions.
plotmf (fis, 'input', 1);
plotmf (fis, 'output', 1, -150, 150);

## Plot the FIS output y as a function of the input x.
gensurf (fis);

#mostrar as regras de modo linguistico
showrule(fis);


#Display rules using symbolic expressions. Regras 1 a 4
showrule(fis, 1:4,'symbolic');

#Display rules using membership function indices.

showrule(fis, 1:4,'indexed');

#ai frescou....kkkkk
showrule(fis,  1:4, 'verbose', 'francais')

showrule(fis,1:4,'verbose','deutsch')
