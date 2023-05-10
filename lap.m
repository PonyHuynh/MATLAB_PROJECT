function [nghiem,solanlap] = lap(fp,a,b,saiso)
    x0 = a;
    x1 = b;
    solanlap=0;
    while abs(x1-x0) >=saiso
        solanlap = solanlap + 1;
        x0 = x1;
        x1 = fp(x0);
    end
    nghiem = x1;
end
    