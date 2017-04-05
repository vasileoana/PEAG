function det_drum(sol,d)
n=length(sol);
drum=zeros(1,n-1);
drum(1)=sol(1);
i=1; k=2;
   for j=i+1:n-1
    if( d(sol(i),sol(j)))
drum(k)=sol(j);
k=k+1;
i=j;
    end;
   end;
   rez=zeros(1,k-1);
   for i=1:k-1
   rez(i)=drum(i);
   end;
   disp('Drumul final este: ');
   disp(rez);
   figure 
   z=1:k-1;
   plot(z,rez(z),'-rs','LineWidth',2,...
       'MarkerEdgeColor','k',...
       'MarkerFaceColor','m',...
       'MarkerSize',8);
end