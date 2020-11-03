% Page87：已知零极点模型，求传递函数模型和状态空间模型
clear;
clc;

% 系统的零极点，增益
z = [-2];
p = [-1,-3,-5];
k = 6;
% 将零极点模型转换成传递函数模型
[num, den] = zp2tf(z, p, k);
% 将零极点模型转换成状态空间模型
[A, B, C, D] = zp2ss(z, p, k);
% 建立零极点模型
g_zpk = zpk(z, p, k);
% 建立传递函数模型
g_tf = tf(num, den);
% 建立状态空间模型
g_ss = ss(A, B, C, D);