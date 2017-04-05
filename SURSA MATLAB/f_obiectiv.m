function [val] =f_obiectiv(c,D)
[~,n]=size(c);
val=0;

i=1;
   for j=i+1:n
    if( D(c(i),c(j)))
            val=val+D(c(i),c(j));
            i=j;
    end;
   end;
if(val && i==n) 
   val =1/val;
else
val=0;
 
end;
end
