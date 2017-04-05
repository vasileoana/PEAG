function [sol,V,val]=GA(s,f,dim,d,pc,pm,nmax,nr)
  
    [~,n]=size(d);
    pop = gen_pop_permutari(s,f,dim,d);
       
    t = 0;       
    V = zeros(1,nmax);  
    
   
    while (t<nmax)
        parinti=SUS(pop);
        desc=crossover(parinti,pc,d);
        desc=mutatie_perm_inserare(desc,pm,d);   
        pop=Genitor2(pop,desc,nr);
                       
        t=t+1;  
       
        [vmax,poz]=max(pop(:,n+1));
        sol=pop(poz,:);
        V(t)=1/vmax;
        val=min(V);
    end;
end