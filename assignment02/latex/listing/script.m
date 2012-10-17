% Moran for N=10
m = 100;
n = 10;
i = 5;
t = 100;

% Initialization of the trajectories vector
Y_10 = zeros(m,t+1);
% Repetition of moran process for m times
for o=1:m
    Y_10(m,:) = moran(n,t,i);
end


% Moran for N=100
m = 100;
n = 100;
i = 50;
t = 100;

% Initialization of the trajectories vector
Y_100 = zeros(m,t+1);

% Repetition of moran process for m times
for o=1:m
    Y_100(m,:) = moran(n,t,i);
end

% Plotting
subplot(2,1,1);
plot(0:100, Y_10)
xlabel('t');
ylabel('X(t)|X(0)=5, N=10');

subplot(2,1,2);
plot(0:100, Y_100)
xlabel('t');
ylabel('X(t)|X(0)=50, N=100');

print('-depsc2', 'plot_moran');
