% Page89����֪�������ݺ�������������
clear;
clc;

num1 = 6 * [1, 2];
den1 = conv([1, 1], conv([1, 3], [1, 5]));

num2 = [1, 2.5];
den2 = conv([1, 1], [1, 4]);

% ��������
[nums, dens] = series(num1, den1, num2, den2);
% ��������
[nump, denp] = parallel(num1, den1, num2, den2);
% ���ɴ������Ӵ��ݺ���
s_tf = tf(nums, dens);
% ���ɲ������Ӵ��ݺ���
p_tf = tf(nump, denp);
