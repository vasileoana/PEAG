function [popN]=mutatie_perm_inserare(pop,pm,d)
[dim,n]=size(pop);
popN=pop;
for i=1:dim
    r=unifrnd(0,1);
    if(r<pm)
        disp('Mutatie efectuata in cromozomul'); disp(pop(i,:));
        p=zeros(1,2);
        p(1)=1+unidrnd(n-3);
        p(2)=1+unidrnd(n-3);
        while(p(1)==p(2))
            p(2)=1+unidrnd(n-2);
        end;
        poz=sort(p);
        disp('Pozitiile:');
        disp(poz);
        popN(i,1:poz(1))=pop(i,1:poz(1));
        popN(i,poz(1)+1)=pop(i,poz(2));
        popN(i,poz(1)+2:poz(2))=pop(i,poz(1)+1:poz(2)-1);
        popN(i,poz(2)+1:n-1)=pop(i,poz(2)+1:n-1);
        popN(i,n)=f_obiectiv(popN(i,1:n-1),d);
        disp('Cromozom rezultat');disp(popN(i,:));
    end;
end;
end
