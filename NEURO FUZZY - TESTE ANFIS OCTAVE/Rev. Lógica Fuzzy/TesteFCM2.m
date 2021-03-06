## This demo:
 ##    - classifies three-dimensional unlabeled data points using
 ##      the Fuzzy C-Means algorithm into three fuzzy clusters
 ##    - plots the input points together with the cluster centers
 ##    - evaluates the quality of the resulting clusters using
 ##      three validity measures: the partition coefficient, the
 ##      partition entropy, and the Xie-Beni validity index
 ##
 ## Note: The input_data was selected to form three areas of
 ##       different shapes.
 
 ## Use fcm to classify the input_data.
 input_data = [1 11 5; 1 12 6; 1 13 5; 2 11 7; 2 12 6; 2 13 7;
               3 11 6; 3 12 5; 3 13 7; 1 1 10; 1 3 9; 2 2 11;
               3 1 9; 3 3 10; 3 5 11; 4 4 9; 4 6 8; 5 5 8; 5 7 9;
               6 6 10; 9 10 12; 9 12 13; 9 13 14; 10 9 13; 10 13 12;
               11 10 14; 11 12 13; 12 6 12; 12 7 15; 12 9 15;
               14 6 14; 14 8 13];
 number_of_clusters = 3;
 [cluster_centers, soft_partition, obj_fcn_history] = fcm (input_data, number_of_clusters, [NaN NaN NaN 0])
 
 ## Plot the data points in two dimensions (using features 1 & 2)
 ## as small blue x's.
 figure ('NumberTitle', 'off', 'Name', 'FCM Demo 2');
 for i = 1 : rows (input_data)
   plot (input_data(i, 1), input_data(i, 2), 'LineWidth', 2,'marker', 'x', 'color', 'b');
   hold on;
 endfor
 
 ## Plot the cluster centers in two dimensions
 ## (using features 1 & 2) as larger red *'s.
 for i = 1 : number_of_clusters
   plot (cluster_centers(i, 1), cluster_centers(i, 2),'LineWidth', 4, 'marker', '*', 'color', 'r');
   hold on;
 endfor
 
 ## Make the figure look a little better:
 ##    - scale and label the axes
 ##    - show gridlines
 xlim ([0 15]);
 ylim ([0 15]);
 xlabel ('Feature 1');
 ylabel ('Feature 2');
 grid
 hold
 
 ## Plot the data points in two dimensions
 ## (using features 1 & 3) as small blue x's.
 figure ('NumberTitle', 'off', 'Name', 'FCM Demo 2');
 for i = 1 : rows (input_data)
   plot (input_data(i, 1), input_data(i, 3), 'LineWidth', 2, ...
         'marker', 'x', 'color', 'b');
   hold on;
 endfor
 
 ## Plot the cluster centers in two dimensions
 ## (using features 1 & 3) as larger red *'s.
 for i = 1 : number_of_clusters
   plot (cluster_centers(i, 1), cluster_centers(i, 3),'LineWidth', 4, 'marker', '*', 'color', 'r');
   hold on;
 endfor
 
 ## Make the figure look a little better:
 ##    - scale and label the axes
 ##    - show gridlines
 xlim ([0 15]);
 ylim ([0 15]);
 xlabel ('Feature 1');
 ylabel ('Feature 3');
 grid
 hold
 
 ## Calculate and print the three validity measures.
 printf ("Partition Coefficient: %f\n", partition_coeff (soft_partition));
 printf ("Partition Entropy (with a = 2): %f\n",partition_entropy (soft_partition, 2));
 printf ("Xie-Beni Index: %f\n\n", xie_beni_index (input_data, cluster_centers,soft_partition));