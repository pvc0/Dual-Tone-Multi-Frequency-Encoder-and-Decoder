function y = encode(seq)

%declaration and initialisation
z=zeros([1 45000]);
t=1:5000;
j=1;

for  i=1:5
    %Nummer 0
    if seq(i)==0
        z(j:j+4999)=0.5.*sin(2*pi*1336.*t/50000)+0.5.*sin(2*pi*941.*t/50000);
        j=j+10000;
    %Nummer 1
    elseif seq(i)==1
        z(j:j+4999)=0.5.*sin(2*pi*1209.*t/50000)+0.5.*sin(2*pi*697.*t/50000);
        j=j+10000;
    %Nummer 2
    elseif seq(i)==2
        z(j:j+4999)=0.5.*sin(2*pi*1336.*t/50000)+0.5.*sin(2*pi*697.*t/50000);
        j=j+10000;
    %Nummer 3
    elseif seq(i)==3
        z(j:j+4999)=0.5.*sin(2*pi*1477.*t/50000)+0.5.*sin(2*pi*697.*t/50000);
        j=j+10000;
    %Nummer 4
    elseif seq(i)==4
        z(j:j+4999)=0.5.*sin(2*pi*1209.*t/50000)+0.5.*sin(2*pi*770.*t/50000);
        j=j+10000;
    %Nummer 5
    elseif seq(i)==5
        z(j:j+4999)=0.5.*sin(2*pi*1336.*t/50000)+0.5.*sin(2*pi*770.*t/50000);
        j=j+10000;
    %Nummer 6
    elseif seq(i)==6
        z(j:j+4999)=0.5.*sin(2*pi*1477.*t/50000)+0.5.*sin(2*pi*770.*t/50000);
        j=j+10000;
    %Nummer 7
    elseif seq(i)==7
        z(j:j+4999)=0.5.*sin(2*pi*1209.*t/50000)+0.5.*sin(2*pi*852.*t/50000);
        j=j+10000;
    %Nummer 8
    elseif seq(i)==8
        z(j:j+4999)=0.5.*sin(2*pi*1336.*t/50000)+0.5.*sin(2*pi*852.*t/50000);
        j=j+10000;
    %Nummer 9
    else
        z(j:j+4999)=0.5.*sin(2*pi*1477.*t/50000)+0.5.*sin(2*pi*852.*t/50000);
        j=j+10000;
    end;
    
    y=z;
    
end;
    
end
