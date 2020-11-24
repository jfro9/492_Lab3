function[yf] = filterfilter(y,n,Fs,Fpass,Fstop)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Zero-phase forward and backward Butterworth lowpassfilter
%   y: Data
%   n: Data length
%   Fs: Sampling frequency (Hz)
%   Fpass: Passband Frequency (Hz)
%   Fstop: Stopband Frequency (Hz)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Apass= 1;           % Passband Ripple (dB)
Astop= 80;          % Stopband Attenuation (dB)
match = 'stopband'; % Band to match exactly
% Construct an FDESIGN object and call its BUTTER method.
h = fdesign.lowpass(Fpass, Fstop, Apass, Astop, Fs);
Hd= design(h, 'butter', 'MatchExactly', match);
%
% Fowardfiltering
yf1 = filter(Hd,y);
% Reverse data order for backward filtering
for i= 1:n
    y_rev(i) = yf1(n-i+1);
end
% Backward filtering
yf2 = filter(Hd,y_rev);
% Reverse data order back
for i= 1:n
    yf(i) = yf2(n-i+1);
end
%
end