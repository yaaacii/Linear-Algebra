% Name: Cicelia Siu
% MATH365.1007
% Project 2, #5

tolErr = 10^-10;
m = 1;
n = 0;
err = Inf;

% try various choices for m and n
while err>tolErr
    m = m+2; % m is always odd
    n = n+2; % n is always even

    % create matrix A
    colNum = m+n+1;
    rowNum = 2*colNum;
    A = zeros(rowNum,colNum);

    x = linspace(0,pi/2.1,rowNum)';
    y = tan(x);
    A(:,1) = 1; %first col is all 1

    % add in elements
    for i = 1:rowNum   
        for j = 1:m
            A(i,j+1) = x(i)^j;
        end
    end

    for i = 1:rowNum
        for j = 1:colNum-m-1
            A(i,m+j+1) = -x(i)^j*y(i);
        end
    end

    % solve
    ab = A\y;
    a = ab(1:m+1);
    b = ab(m+2:end);
    b = [1;b];
    a = flipud(a);
    b = flipud(b);

    for i = 1:numel(x)
        num = polyval(a,x(i));
        den = polyval(b,x(i));
        g(i,1) = num/den;
    end

    err = norm(y-g);
end

% results
fprintf('Line of best fit :\n m = %d\n n = %d\n\n',m,n)
plot(x,y,'o',x,g,'-r')
xlabel('x'), ylabel('tan(x)'), grid on
