c=0; 
y=0.5;  
hold on 
while c < 4
    y=0.5; 
        for i=1:100; 
            y = -c*y.^2 +c*y; %converge the iteration
        end 
        for i=1:20 
              y = -c*y.^2 +c*y;
              plot(c,y,'.', 'MarkerSize',1); % plot the converged points
          end 
          c=c+0.002;
end


print('-depsc2', 'plot_A01_P01');
