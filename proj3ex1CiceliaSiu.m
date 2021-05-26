% Name: Cicelia Siu
% MATH365.1007
% Project 3, #1

% Computer Random 5x5 Matrix
fprintf("The random 5x5 matrix: \n")
A = round(20*rand(5,5)-10*ones(5,5))

% Calculating Cofactors and Minor Matrices
M11=A([2:end],[2:end]);
A11=(-1)^(1+1)*det(M11);

M12=A([2:end],[1,3:end]);
A12=(-1)^(1+2)*det(M12);

M13=A([2:end],[1:2,4:end]);
A13=(-1)^(1+3)*det(M13);

M14=A([2:end],[1:3,5]);
A14=(-1)^(1+4)*det(M14);

M15=A([2:end],[1:4]);
A15=(-1)^(1+5)*det(M15);

% Calculating determinate from cofactor and minor matrices

determinateA=A(1,1)*A11+A(1,2)*A12+A(1,3)*A13+A(1,4)*A14+A(1,5)*A15;
fprintf("\nThe determinate from cofactors and minor matrices: %f", determinateA)
fprintf("\nThe determinate from det(A): %f", det(A))
fprintf("\nThe results are equivalent.")