t = 0:0.1:10.1;
y = sin(t) - cos(2*t);
%undersampling
t_under = t(1:3:end)/3;
under = y(1:3:end);
%uppersampling
w = length(t_under)
t_upper = linspace(t_under(1),t_under(end),w*7)*7;

upper = zeros(1,w*7);
upper(1:7:end) = under;

stem(t,y);
hold on
stem(t_upper,upper,'r-')

subplot(3,1,1)
stem(t,y);
subplot(3,1,2)
stem(t_under,under);
subplot(3,1,3)
stem(t_upper,upper);