% Page180����֪�߽�ϵͳ���ݺ��������� Nichols ͼ
clear;
clc;

num = [0.0001 0.0281 1.06356 9.6];
den = [0.0006 0.0286 0.06356 6];
G = tf(num, den);
% ���Ƶ� M Բ�͵� N Բ
ngrid('new')
% ����ϵͳ�� Nichols ͼ
nichols(G)

