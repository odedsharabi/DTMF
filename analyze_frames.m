function V = analyze_frames(f)
    V = zeros(size(f,1), 2);
    for k = 1:size(f,1)
        [Amp,Freq] = findpeaks(f(k, :));
        max = Amp(1);
        maxind = 1;
        for n = 1 : length(Amp)
            if Amp(n) > max
                max = Amp(n);
                maxind = n;
            end
        end
        V(k,1) = Freq(maxind);
        Amp(maxind) = 0;
        max = Amp(1);
        maxind = 1;
        for n = 1 : length(Amp)
            if Amp(n) > max
                max = Amp(n);
                maxind = n;
            end
        end
        V(k,2) = Freq(maxind);
    end

end