function [ Pop ] = gen_pop_permutari(s,f,dim,D)
[~,n]=size(D);
Pop=zeros(dim,n+1);
for i=1:dim
    Pop(i,1:n)=gen_perm(s,f,n);
    Pop(i,n+1)=f_obiectiv(Pop(i,1:n),D);
end;
end
