/To generate Bipolar and Manchester line codes
//A 54 vikas lodh
close
clear
clc
x = [0 1 1 0 0 0 0 0 ]
len = length(x)
z=0
subplot(3,1,1)
a=gca()
a.data_bounds=[0 -2;len 2]
a.grid=[1]
title("Input Binary Sequence A 54 vikas lodh")
for i=1:len
    t=[z:z+1]
    if(x(i)==0)
        plot(t,0)
    else
        plot(t,1,'r')
    end  
    z=z+1
 end
z=0
subplot(3,1,2)
a=gca()
a.data_bounds=[0 -2; len 2]
a.grid=[1 1]
title('Bipolar Code')
counter=0
for i=1:len
    t=[z:z+1],
    if(x(i)==1)
        counter=counter+1
        if(modulo(counter,2)==0)
            plot(t,-1,'r')
         else
             plot(t,1,'r')
         end
        else
            plot(t,0)
         end
         z=z+1
end       
z=0
subplot(3,1,3)
a=gca()
a.data_bounds=[0 -2;len 2]
a.grid=[1]
title("Manchaster Code")
for i=1:len
    t=[z:0.5:z+0.5]
    if(x(i)==0)
        plot(t,-1)
        t=t+0.5
        plot(t,1)
     else
         plot(t,1,'r')
         t=t+0.5
         plot(t,-1,'r')
     end
     z=z+1
end