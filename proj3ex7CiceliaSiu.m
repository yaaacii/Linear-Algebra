% Name: Cicelia Siu
% MATH365.1007
% Project 3, #7

% Generate determinate Values for 100 random matrices
fprintf("\nDeterminates of 100 random matrices:\n")
determ = zeros(1,100);
for i = 1:100
    A =  round(20*rand(5,5)-10*ones(5,5));
    determ(1,i) = det(A);
end
% Print the determinates
determ'

fprintf("\nFrom the 100 matrices, I did not get a singular matrix as none of the determinates were 0.\n\n")


% Generate determinate Values for 1000 random matrices
determ = zeros(1,1000);
for i = 1:1000
    A =  round(20*rand(5,5)-10*ones(5,5));
    determ(1,i) = det(A);
end

fprintf("\nSmallest determinate in absolute value in 1000 random Matrices: %f", min(abs(determ)))
fprintf("\nFrom the 1000 matrices, I did not get a singular matrix as none of the determinates were 0.")

