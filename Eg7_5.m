% Page186����֪���ݺ�������������ȶ�ԣ���ͷ�ֵ�ȶ�ԣ��
clear;
clc;

num = 5 * [0.0167, 1];
den = conv(conv(conv([1, 0], [0.03, 1]),[0.0025, 1]),[0.001, 1]);
G = tf(num, den);
w = logspace(0, 4, 50);
bode(G, w);
grid;
% ���ȶ�ԣ��
[Gm, Pm, Wcg, Wcp] = margin(G);
