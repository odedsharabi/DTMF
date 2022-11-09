function Fourier = compute_Fourier_transform(f,fs)
    parts = size(f,1);
    t = 0 : 1/fs : ((length (f)/fs)-(1/fs)) ;
    Trans = zeros (parts, length (f));
    Fourier =zeros(parts,1700);
    for k = 1 : parts
    for m = 600:1700
    for n = 1 : length (f)
        Trans(k, n)= f(k, n)*exp((-1i)*2*pi*(m)*t(n));
    end
    Fourier(k, m) = abs(trapz(t, Trans(k, :)));
    end
    end
end
