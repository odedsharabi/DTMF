

[signal,fs] =  audioread('phonecall.wav');
 
time = 0.2;
Frames = split_signal_into_frames(signal,time,fs);
Fourier = compute_Fourier_transform(Frames,fs);
V = analyze_frames(Fourier);
phone_number = decode(V);
msg = ['The phone number dialed is :' num2str(phone_number)] ;
disp(msg);
 

    









