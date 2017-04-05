function [c1,c2] = PMX(x1,y1)
n=length(x1);
gen=0;
while(~gen)
    poz=unidrnd(n,[1 2]);
    p1=min(poz);p2=max(poz);
    if(p1<p2)
        gen=1;
    end;
end;
c1=c_PMX(x1,y1,p1,p2);
c2=c_PMX(y1,x1,p1,p2);
end

function [c]=c_PMX(x1,y1,p1,p2)
n=length(x1);
c=zeros(1,n);

c(p1:p2)=x1(p1:p2);
A=[];
for i=p1:p2
    if(~ismember(y1(i),c))
        A=[A; [y1(i) i]];
    end;
end;
[p,~]=size(A);
for i=1:p
   
    va=A(i,1);pa=A(i,2);
    b=c(pa);
    [~,j]=ismember(b,y1);
    while(c(j))
            b=c(j);
            [~,j]=ismember(b,y1);
    end;
    c(j)=va;
end;
for i=n:-1:1
    if(~ismember(y1(i),c))
        [~,j]=ismember(0,c);
        c(j)=y1(i);
    end;
end;
end
