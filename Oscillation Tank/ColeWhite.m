function [ f ] = ColeWhite( ED, Re, tol )
%COLEWHITE Calcula el factor de fricci�n con la f�rmula de
%   Colebrook-White por medio de iteraci�n de punto fijo

f0 = 1.0/((-2*log10(ED/3.71))^2);
f1 = 1.0/((-2*log10(ED/3.71+2.51/(Re*sqrt(f0))))^2);

while abs(f1-f0) > tol
    f0 = f1;
    f1 = 1.0/((-2*log10(ED/3.71+2.51/(Re*sqrt(f0))))^2);
end

f = f1;

end

