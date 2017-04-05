function [Pop_urm] = Genitor2(Pop_curenta,Copii,ni)
[dim,m]=size(Pop_curenta);
Pop=sortrows(Pop_curenta,m);
disp('Populatie curenta sortata');
disp(Pop);
 
PopC=sortrows(Copii,m);
disp('Populatie copii sortata');
disp(PopC);
 
Pop_urm=Pop;
Pop_urm(1:ni,:)=PopC(dim-ni+1:dim,:);
end


