x = sum(stateMon_e_values,2);
figure;
fs = 10000; 
y = fft(x);


n = length(x);          % number of samples
f = (0:n-1)*(fs/n);
length(f)% frequency range
power = abs(y).^2/n;    % power of the DFT

plot(f,power)
xlabel('Frequency (Hz)',"FontSize",10)
ylabel('Power',"FontSize",10)


set(gca,"FontSize",10);

xlim([0,100])
ylim([0,150])

theta = sum(power(39:99))
gamma = sum(power(299:999))

figure
bar([theta,gamma])
set(gca,'xticklabel',{'Theta (4-10 Hz)','Gamma (30-100 Hz)'},"FontSize",10);
xlabel("Oscillation Frequency Band","FontSize",10)
ylabel("Power","FontSize",10)
ylim([0 60000])
