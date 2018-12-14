## Exemplo Gorjeta lendo de um arquivo .FIS


## Read the FIS structure from a file.
fis = readfis ('Data/sugeno_tip_calculator');

## Plot the input and output membership functions.
plotmf (fis, 'input', 1);
plotmf (fis, 'input', 2);
plotmf (fis, 'output', 1);
plotmf (fis, 'output', 2);
plotmf (fis, 'output', 3);

## Plot the cheap, average, and generous tips as a function of
## Food-Quality and Service.
gensurf (fis, [1 2], 1);
gensurf (fis, [1 2], 2);
gensurf (fis, [1 2], 3);

## Demonstrate showrule with hedges.
showrule (fis);

## Calculate the Tip for 6 sets of input values: 
puts ("\nFor the following values of (Food Quality, Service):\n\n");
food_service = [1 1; 5 5; 10 10; 4 6; 6 4; 7 4]
puts ("\nThe cheap, average, and generous tips are:\n\n");
tip = evalfis (food_service, fis, 1001)