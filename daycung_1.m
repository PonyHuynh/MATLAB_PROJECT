function [nghiem,solanlap] = daycung_1(f,a,b,saiso)
   solanlap=0;
    e=abs(b-a);
    while (e>=saiso)
    solanlap=solanlap+1;
    c=(a*f(b)-b*f(a))/(f(b)-f(a));
        if (f(a)*f(c)<0)
            b=c;
        elseif f(c)*f(a) >0
            a=c;
        else 
            break;
        end
    e=abs(a-b);
    end
    nghiem = c;
end