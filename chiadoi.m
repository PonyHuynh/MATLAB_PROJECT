function [nghiem,solanlap] = chiadoi(f,a,b,saiso)

solanlap = 0;
 while b - a > saiso
     c = (a + b)/2;
if f(c) * f(a) <0
         b = c;
    else
        a =c;
end
solanlap = solanlap +1;
 end
nghiem = a;
end

