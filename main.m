clear all

index = 26; % X_26 correspondss to isocitrate dehydrogenase in the TCA cycle model

filename = sprintf('./output/sensitivity_tca_x%d.txt', index);

for t_end = [0.01 0.05 0.1 0.5 1.0 15.0 0.5*60 1*60 3*60 6*60 12*60 24*60 48*60]

  % Integration
  [t,x] = ode15s(@sensitivity_tca_26, [0 t_end],[2.50E-03;2.50E-03;5.93E-02;1.00E-02;2.91E-01;6.03;1.85;4.83;2.50E-02;1.00E-02;8.01E-01;4.00E-02;2.20E-01;9.77E-01;7.61E+03;3.15;2.57E+01;7.78E+01;3.08;1.96E-01;2.58E+02;7.40E+01;1.00E-01;8.24;8.00E+01;2.71E+02;1.33E-01;9.95;2.67E+01;8.00E+02;1.00E-01;1.00;7.40E+01;1.06;2.07;1.62;3.60E-01;2.03;1.86;4.46E-01;2.72E+01;1.57;7.00;3.26E-01;2.40E-01;7.20E-02;1.00E-01;1.80E-01;zeros(13, 1)]);
  
  % Dynamic logarithmic gain (non-dimensional sensitivity)
  dlmwrite(filename, [t_end, x(size(x,1),49:61).*x(size(x,1),index)./x(size(x,1),1:13)], 'delimiter', '\t', '-append')

end
