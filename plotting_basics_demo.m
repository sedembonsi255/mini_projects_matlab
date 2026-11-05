%play demo
x = linspace(0, 4*pi, 100);
y = sin(x);
y2 = cos(x);

plot (x, y, '-r', x, y2, '*b'); 
xlabel "time";
ylabel = "date";
legend ["cosine", "sine"];

%you can also use the "hold on" here
a = linspace(1, 16, 15);
%f (r,n) = r^2 + n^2
% function n = fxy(r, n);
%    n = r^2 + n^2;
% end

time = 0:0.001:4*pi;
x = sin(time);
y = cos(time);
z = time;
plot(x,y,z, 'k', 'linewidth', 2)
zlabel('time');

%subplot
x = linspace(0:10:100000);
y1 = x.^2;
y2 = x.^3;

subplot(2,2,1);
plot(x1, y1);

subplot(2,2,2);
plot(x,y);



 
