function [Copii] = crossover(Pop,pc,D)
[dim,m]=size(Pop);
Copii=Pop;
n=m-1;
for t=1:dim/2
    r=unifrnd(0,1);
    if(r<pc)
        [x,y]=PMX(Pop(2*t-1,1:n),Pop(2*t,1:n));
        Copii(2*t-1,1:n)=x;
        Copii(2*t-1,n+1)=f_obiectiv(x,D);
        Copii(2*t,1:n)=y;
        Copii(2*t,n+1)=f_obiectiv(y,D);
    end;
end;
end
