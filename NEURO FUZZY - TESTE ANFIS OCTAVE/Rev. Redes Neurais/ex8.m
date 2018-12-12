% Self Organizing Feature Maps SOFM (Kohonen networks)
% Examples of drawing feature maps
% 2-D input space , 2-D feature space (SOFM22)
clear;
clc;
m = [4 3]; 
mm = prod(m) ;  %  p = 2 ;

% Map of topological positions of neurons
[V1, V2] = meshgrid(1:m(1), 1:m(2)) ;
VV = V1 + j*V2 ;
V = [V2(:), V1(:)] ;

% Example of a weight matrix
W = V-1.4*rand(mm, 2) ; 

% Plotting a feature map - method 1
FM1 = full(sparse(V(:,1), V(:,2), W(:,1))) ;
FM2 = full(sparse(V(:,1), V(:,2), W(:,2))) ; 
h = figure(1);
cm = 32 ; pcolor(FM1, FM2, cm*(FM1+FM2)) ;
title('A 2-D Feature Map using "pcolor" (method 1)')
colormap(hsv(cm)) , drawnow
% Plotting a feature map - method 2
FM = FM1+j*FM2;
h = figure(2) ;
plot(FM), hold on, plot(FM.'), plot(FM, 'o'), hold off
title('A 2-D Feature Map using "grid lines" (method 2)')
