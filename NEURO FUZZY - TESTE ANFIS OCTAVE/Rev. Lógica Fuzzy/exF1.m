## Exemplo Clássico da Gorjeta 

clc;
clear

a = newfis('tipper')


#Criando as funcoes de pertinencia 

a.input(1).name = 'serviço';
a.input(1).range = [0 10];

a.input(1).mf(1).name = 'pobre';
a.input(1).mf(1).type = 'gaussmf';
a.input(1).mf(1).params = [1.5 0];

a.input(1).mf(2).name = 'bom';
a.input(1).mf(2).type = 'gaussmf';
a.input(1).mf(2).params = [1.5 5]; 

a.input(1).mf(3).name = 'excelente'; 
a.input(1).mf(3).type = 'gaussmf';
a.input(1).mf(3).params = [1.5 10];

a.input(2).name = 'comida';
a.input(2).range = [0 10]; 

a.input(2).mf(1).name = 'rançosa';
a.input(2).mf(1).type = 'trapmf';
a.input(2).mf(1).params = [-2 0 1 3]; 

a.input(2).mf(2).name = 'deliciosa'; 
a.input(2).mf(2).type = 'trapmf';
a.input(2).mf(2).params = [7 9 10 12];

#SAIDA

a.output(1).name = 'gorjeta'; 
a.output(1).range = [0 30]; 

a.output(1).mf(1).name = 'barata'; 
a.output(1).mf(1).type = 'trimf';
a.output(1).mf(1).params = [0 5 10];

a.output(1).mf(2).name = 'media';
a.output(1).mf(2).type = 'trimf';
a.output(1).mf(2).params = [10 15 20]; 

a.output(1).mf(3).name = 'generosa'; 
a.output(1).mf(3).type = 'trimf'; 
a.output(1).mf(3).params = [30 25 30];

#REGRAS#
a.rule(1).antecedent = [1 1];
a.rule(1).consequent = [1];
a.rule(1).weight = 1;
a.rule(1).connection = 2; 

a.rule(2).antecedent = [2 0]; 
a.rule(2).consequent = [2]; 
a.rule(2).weight = 1;
a.rule(2).connection = 1; 

a.rule(3).antecedent = [3 2]; 
a.rule(3).consequent = [3]; 
a.rule(3).weight = 1; 
a.rule(3).connection = 2;

