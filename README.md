# README

Prerequisites: MATLAB software

Last update: 14/4/2022

## Codes for TCA cycle model

### main.m

INPUT: model equations (sensitivity_tca_26.m) and other parameters

OUTPUT: Dynamic logarithmic gains for all metabolites (sensitivity_tca_x26.txt)

Main code for calculating dynamic logarithmic gains for all metabolites in the TCA cycle model.
In line 10, initial values for all metabolites, enzymes, and sensitivities are given. 

### sensitivity_tca_26.m

Ordinary differential equations for the TCA cycle model and sensitivity equations for the perturbation of isocitrate dehydrogenase, where sensitivity equations were derived by the symbolic differential function in MATLAB software.

### sensitivity_tca_x26.txt

Rows and columns correspond to metabolites and end times, respectively. Each element corresponds to the logarithmic gain for the metabolite at the time.

