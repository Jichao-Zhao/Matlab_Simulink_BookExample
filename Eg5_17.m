% Page131：已知传递函数，判断稳定性，绘制零极点图
clear;
clc;

% 开环零点、极点、增益
z = -2.5;
p = [0, -0.5, -0.7, -3];
k = 0.2;
% 建立零极点形式的开环传递函数
Go = zpk(z,p,k);
% 单位负反馈连接
Gc = feedback(Go, 1);
% 建立闭环传递函数
Gctf = tf(Gc);
% 获取闭环传递函数的特征多项式
dc = Gctf.den;
% 将特征多项式系数转换为字符形式的函数，便于查看
dens = poly2str(dc{1}, 's');

% 获取其多项式系数
den = [1, 4.2, 3.95, 1.25, 0.5];
% 求取特征根
p = roots(den);
% 绘制零极点图
pzmap(Gctf);
grid

