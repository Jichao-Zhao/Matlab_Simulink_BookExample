% Page180����֪���ݺ���������г���ֵ��г��Ƶ��
clear;
clc;

num = 3.6;
den = [1, 3, 5];
G = tf(num, den);
[Mr, Pr, Wr] = mr(G)
bode(G)

function [Mr, Pr, Wr] = mr(G)
% �õ�ϵͳ Bode ͼ��Ӧ�ķ�ֵ mag����� pha ���Ƶ�ʵ� w ʸ��
[mag, pha, w] = bode(G);
magn(1, :) = mag(1, :);
phase(1, :) = pha(1, :);
[M, i] = max(magn);
% ���г���ֵ
Mr = 20 * log(M);
Pr = phase(1, i);
% ���г��Ƶ��
Wr = w(i, 1);
end
