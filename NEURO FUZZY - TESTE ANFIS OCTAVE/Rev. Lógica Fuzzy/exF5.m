
## Read the FIS structure from a file.
## (Alternatively, to select heart_disease_risk.fis using the dialog,
## replace the following line with
##    fis = readfis ();
fis = readfis('Data/heart_disease_risk');

## Plot the input and output membership functions.
plotmf (fis, 'input', 1);
plotmf (fis, 'input', 2);
plotmf (fis, 'output', 1);

## Plot the Heart Disease Risk as a function of LDL-Level and HDL-Level.
gensurf (fis);

## Calculate the Heart Disease Risk for 4 sets of LDL-HDL values: 
puts ("\nFor the following four sets of LDL-HDL values:\n\n");
ldl_hdl = [129 59; 130 60; 90 65; 205 40]
puts ("\nThe Heart Disease Risk is:\n\n");
heart_disease_risk = evalfis (ldl_hdl, fis, 1001)