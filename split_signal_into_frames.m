function Frames = split_signal_into_frames(signal,time,fs)
    L = length(signal);
    parts = L/(time*fs);
    Frames = [parts;time*fs];
    count = 1;
    for p = 1:parts
        for q = 1:(time*fs)
            Frames(p,q)= signal(count);
            count = count+1;
        end
    end
    
end