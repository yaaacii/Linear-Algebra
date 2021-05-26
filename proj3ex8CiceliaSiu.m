% Name: Cicelia Siu
% MATH365.1007
% Project 3, #8

% Loop 10 times

for i=1:10
    % Making matrix w determinate = 1 or -1
    A=randi([-10,10],5,5);
    L=tril(A);
    U=triu(A);
    for j=1:5
        if(mod(j,2)==0)
            L(j,j)=1;
            U(j,j)=-1;
        else
            L(j,j)=-1;
            U(j,j)=1;
        end
    end
    % Find Det(A) = det(L)*det(U)
    fprintf("\nDet(A%d) = det(L)*det(U) = ", i)
    disp(det(L)*det(U))

    fprintf("\nMatrix A%d is\n", i)
    A=L*U

    % Find determinate of A
    fprintf("\nDeterminant of A%d is", i)
    disp(det(A))

    % Find inverse of A
    fprintf("\nMatrix A%d inv is \n", i)
    inverseA = round(inv(A));
    disp(inverseA)

    % Find determinate inverse of A
    fprintf("\nDeterminant of A%d inv is ", i)
    disp(det(inverseA))

    % Test
    fprintf("\nTest of A*A^-1 is \n")
    disp(A*inverseA)
    fprintf("\n\n------------------------------------------\n\n")
end
