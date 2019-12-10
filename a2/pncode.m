clc
%Generation of first m-sequence using generator polynomial [45]
sd1 =round(rand(1,4));            
n = length(sd1)
G=2^n-1
PN1=[];                      
disp(sd1)
for j=1:G        
    PN1=[PN1 sd1(4)];
    if sd1(1)==sd1(2)
        temp1=0;
    else temp1=1;
    end
    sd1(1)=sd1(2);
    sd1(2)=sd1(3);
    sd1(3)=sd1(4);
    %sd1(4)=sd1(5);
    sd1(4)=temp1;
    disp(sd1)
end