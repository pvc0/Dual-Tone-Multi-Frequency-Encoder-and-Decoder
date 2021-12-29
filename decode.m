function seq = decode(y)

%Frequenzen-Peaks from Fouriertransformation 
highf=[120.9, 133.6, 147.7, 163.3];
lowf=[69.7, 77.0, 85.2, 94.1];

%Variables
diff1=zeros(1,4);
diff2=zeros(1,3);
seq=zeros(1,5);
j=1;

for i=1:5
     %y-Filter
       yf=y(j:j+4999)-mean(y(j:j+4999));
     %FFT
       n=length(y(j:j+4999));
       ft=fft(yf, n);
       ft=ft(1:(length(ft)/2));
     %finding all peaks
       [p, indp]=findpeaks(abs(ft));
     %two highest frequences
       [~, indpMax]=maxk(p, 2);
       peak12=[indp(indpMax(1)), indp(indpMax(2))];
       peak12=sort(peak12);

    %low frequency 
    for m=1:4
        diff1(m)=abs(peak12(1)-lowf(m));
    end
    [~, idlow]=min(diff1);

    %high frequency 
    for k=1:3
        diff2(k)=abs(peak12(2)-highf(k));
    end
    [~, idhigh]=min(diff2);

    %assigning numbers
    if idlow==1
        if idhigh==1
            seq(i)=1;
        elseif idhigh==2
            seq(i)=2;
        else 
            seq(i)=3;
        end
    elseif idlow==2
        if idhigh==1
            seq(i)=4;
        elseif idhigh==2
            seq(i)=5;
        else 
            seq(i)=6;
        end
    elseif idlow==3
        if idhigh==1
            seq(i)=7;
        elseif idhigh==2
            seq(i)=8;
        else 
            seq(i)=9;
        end
    else 
        seq(i)=0;
    end
    
    j=j+10000;

end

end
