while 1
    x=input("Enter the type of echo effect you want or Exit \n 1- weak echo.\n 2- medium echo.\n 3- strong echo.\n 4- finish and Exit.\n");
    switch x
    case 1
        %read,display and plot audio signal it on matlab
        [y,FS]=audioread('voice.wav');
        T1=length(y)/FS;
        sound(y,FS);
        pause(T1);
        subplot(3,1,1);
        plot(y);
        title('original sound');
        %define impulse response,generate echo using convolution and plot signal
        h=[1; zeros(0.4*FS,1);0.3];
        subplot(3,1,2);
        plot(h,'g','LineWidth',2);
        title('impulses');
        out=conv(y,h);
        lout=length(out);
       lh=length(h);
       l_out=lout+lh;
       T2=l_out/FS;
       audiowrite('voice1_weak.wav',out,FS);
       sound(out,FS);
       pause(T2);
       subplot(3,1,3);
       plot(out,'r');
       title('signal with Echo effect');
    case 2
        %read,display and plot audio signal it on matlab
        [y,FS]=audioread('voice.wav');
        T1=length(y)/FS;
        sound(y,FS);
        pause(T1);
        subplot(3,1,1);
        plot(y);
       title('original sound');
      %define impulse response,generate echo using convolution and plot signal
       h=[1; zeros(0.4*FS,1);0.25;zeros(0.4*FS,1);0.25];
       subplot(3,1,2);
       plot(h,'g','LineWidth',2);
       title('impulses');
       out=conv(y,h);
       lout=length(out);
       lh=length(h);
       l_out=lout+lh;
       T2=l_out/FS;
       audiowrite('voice2_medium.wav',out,FS);
       sound(out,FS);
       pause(T2);
       subplot(3,1,3);
       plot(out,'r');
      title('signal with Echo effect');
    case 3
        %read,display and plot audio signal it on matlab
        [y,FS]=audioread('voice.wav');
        T1=length(y)/FS;
        sound(y,FS);
        pause(T1);
        subplot(3,1,1);
        plot(y);
        title('original sound');
        %define impulse response,generate echo using convolution and plot signal
        h=[1; zeros(0.4*FS,1);0.9; zeros(0.4*FS,1);0.9; zeros(0.4*FS,1);0.9];
        subplot(3,1,2);
        plot(h,'g','LineWidth',2);
        title('impulses');
        out=conv(y,h);
        lout=length(out);
        lh=length(h);
        l_out=lout+lh;
        T2=l_out/FS;
        audiowrite('voice3_strong.wav',out,FS);
        sound(out,FS);
        pause(T2);
        subplot(3,1,3);
        plot(out,'r');
        title('signal with Echo effect');
    case 4
        break;
    otherwise
        fprintf("Please Enter 1 or 2 or 3 to choose echo system type");
        continue;
    end
end
