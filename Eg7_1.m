% Page178����֪���ݺ��������� Nyquist ͼ
clear;
clc;

num = 5;
den = [3,1];
G = tf(num, den);
% ���� Nyquist ���߲����դ��
nyquist(G);
grid

