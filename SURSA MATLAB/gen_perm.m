function [y]=gen_perm(s,f,m)
y = zeros(1,m);
y(1)=s;
y(m)=f;
for i=2:m-1
    gata=0;           
    while(~gata)   
                            
            x=unidrnd(m);
            if(~ismember(x,y))
                     y(i)=x;
                    gata=1;
            end;
    end;
end;
end
