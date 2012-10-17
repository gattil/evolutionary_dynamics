function [ X ] = moran( n, t, i )
%MORAN Generation of the Moran vector containing values X(t) from t=0 to
%t=t. Possible states 0,1,...,n and initial i.

% Initialization of the vector X
X = zeros(1, t+1);

% Initial state i
X(1) = i;

% Generation of the choices per each moment t. Rand() istantiates a mxn
% matrix, each cell with a random number following the uniform distribution
% in the interval 0-1

cl = round(1+(n-1)*rand(1, t+1));
cd = round(1+(n-1)*rand(1, t+1));

% Computation of the cells in the vector X according to the cl and cd

for t=2:t+1
    if (cl(t) <= X(t-1) && cd(t) <= X(t-1)) || (cl(t) > X(t-1) && cd(t) > X(t-1))
        
        % Assing the previous position to the current position
        X(t) = X(t-1);
        
    elseif (cl(t) <= X(t-1) && cd(t) > X(t-1))
        
        % Assing to the current position the previous position incremented 
        X(t) = X(t-1)+1;
        
    elseif (cl(t) > X(t-1) && cd(t) <= X(t-1))
       
        % Assing to the current position the previous position decremented 
        X(t) = X(t-1)-1;

    end
end

end

