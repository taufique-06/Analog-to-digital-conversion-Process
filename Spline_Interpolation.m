clear % clear the memory
clc % clear the screen
Fn = 3; %Nyquist Frequency
Fnr = 6; %Nyquist Rate
Fs = Fnr*5; %Sampling frequency
Ts = 1 / Fs; %Sampling period
T = 1 / 3; 
N = T / Ts; %Number of samples per period
n = 0:0.01:1;
x_n=sin(2*pi*3*n);
figure('units','normalized','outerposition',[0 0 1 1])
%plot(n, x_n,'LineWidth',2); %Plotting
title('Time vs Magnitude', 'FontSize',16, 'FontWeight','bold','Color','black'); %giving the figure a title
xlabel('Time','FontSize',14,'FontWeight','bold','Color','black'); %Adjusting x label title
ylabel('Magnitude','FontSize',14,'FontWeight','bold','Color','black'); %Adjusting y label title
ax = gca; %Get handle to the axes graphical objects
ax.XAxis.FontSize = 14;
ax.XAxis.FontWeight = 'bold';
ax.YAxis.FontSize = 14;
ax.YAxis.FontWeight = 'bold';
yticks(-1:0.2:1);
yt = yticks;
grid on; %adding a grid
c_increment = 1;
start = 0;
stop = 3*N-1;
c_n = start:c_increment:stop;
c_nTs = c_n*Ts;
cx_n = sin(2*pi*3*c_nTs);
stem (c_nTs, cx_n);
hold on;
ti = 0:0.01/2:1; % constructing new time-base with finer abscissa
x_i=interp1(c_nTs,cx_n,ti,'spline');
ylim([-1 1]);
stem(ti, x_i);
hold off;











