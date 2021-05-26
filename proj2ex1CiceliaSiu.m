% Name: Cicelia Siu
% MATH365.1007
% Project 2, #1


fprintf("a) Scatter plot\n");
TOTAL = [20313 21071 21586 21510 21356 22454 22044 22345 22702 22361 22922 23365 23912 23637 23865 23873 23674 24812];
YEAR = 1979:1996;
plot(YEAR, TOTAL, 'o');


fprintf("b) Poly\n");
A = polyfit(YEAR, TOTAL, 1);
hold on
Y = polyval(A, YEAR);
%hold on
plot(YEAR, Y);


fprintf("c) Forcasting tool\n");
year1 = 1979:1994;
total = TOTAL(1:16);
forcastYears = [1995 1996];
a1 = polyfit(year1, total, 1);
total = polyval(a1, forcastYears);
forcast1995 = total(1);
forcast1996 = total(2);
fprintf("Forcast for 1995:");
disp (forcast1995);
fprintf("Forcast for 1996:");
disp (forcast1996);
fprintf(" Explaination: THe linear fit predits the actual enrollment for 1995 and 1996 well as the line runs is near both of the points.\n\n");

fprintf("d) Estimate for 30000\n");
total2 = 0;
year2 = 1996;
while total2 < 30000
    total2 = polyval(A, year2);
    year2 = year2 +1;
end
estimate30000 = year2;
disp(estimate30000);

fprintf(" Estimate for 35000\n");
total3 = 0;
year3 = 1996;
while total3 < 35000
    total3 = polyval(A, year3);
    year3 = year3 +1;
end
estimate35000 = year3;
disp(estimate35000);