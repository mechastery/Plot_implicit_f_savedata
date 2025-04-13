% subplot(2,2,3);
%  n=0.641;
%  Ea=12044;
%  A0=0.1337;
%  R=8.3145;
%  alpha=0.99;
% % fff=1-[1-(1-n)*A0*x*exp(-Ea/(R*y))]^(1/(1-n))-alpha;
% sprintf('uohfua%f,aiudg%f',A0,R);
% ezplot('1-[1-(1-n)*A0*x*exp(-Ea/(R*y))]^(1/(1-n))-alpha',[-4,3,-4,5]);   %f=f(x,y)
%x=get(h,'Xdata')
% y=get(h,'Ydata')
% axis equal;

%此处将x和y的范围都限制在-4到4的区间，也可分开限制不同的区间

clc;clear all;close all;
%f = @(x,y) x.^2 - y.^2 - 1;
 n=0.641;
 Ea=12044;
 A0=0.1337;
 R=8.3145;
 alpha=0.99;
subplot(2,2,1);
f = @(t,T) 1-[1-(1-n).*A0.*t.*exp(-Ea./(R.*T))].^(1./(1-n))-alpha;
lim = [0 10000 200 600];
a=fimplicit(f,lim);
xlabel('Time(s)');
ylabel('Temperature(K)');
grid on;

subplot(2,2,2);
alpha=0.8;
f = @(t,T) 1-[1-(1-n).*A0.*t.*exp(-Ea./(R.*T))].^(1./(1-n))-alpha;
lim = [0 10000 200 600];
b=fimplicit(f,lim);
xlabel('Time(s)');
ylabel('Temperature(K)');
grid on;

subplot(2,2,3);
alpha=0.6;
f = @(t,T) 1-[1-(1-n).*A0.*t.*exp(-Ea./(R.*T))].^(1./(1-n))-alpha;
lim = [0 10000 200 600];
c=fimplicit(f,lim);
xlabel('Time(s)');
ylabel('Temperature(K)');
grid on;

subplot(2,2,4);
alpha=0.5;
f = @(t,T) 1-[1-(1-n).*A0.*t.*exp(-Ea./(R.*T))].^(1./(1-n))-alpha;
lim = [0 10000 200 600];
d=fimplicit(f,lim);
xlabel('Time(s)');
ylabel('Temperature(K)');
grid on;

%扣点的坐标
x1=get(a,'Xdata');
y1=get(a,'Ydata');
x2=get(b,'Xdata');
y2=get(b,'Ydata');
x3=get(c,'Xdata');
y3=get(c,'Ydata');
x4=get(d,'Xdata');
y4=get(d,'Ydata');
%写入xslx表格
save x.data -ascii x1;
save x.data -ascii y1;
xlswrite("x1y1.xlsx",x1,1,'A1');
xlswrite("x1y1.xlsx",y1,1,'A2');
xlswrite("x1y1.xlsx",x2,1,'A3');
xlswrite("x1y1.xlsx",y2,1,'A4');
xlswrite("x1y1.xlsx",x3,1,'A5');
xlswrite("x1y1.xlsx",y3,1,'A6');
xlswrite("x1y1.xlsx",x4,1,'A7');
xlswrite("x1y1.xlsx",y4,1,'A8');