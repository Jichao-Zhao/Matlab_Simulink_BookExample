% Page90����֪ǰ�򴫵ݺ�������ջ����ݺ����͸��������ݺ���
clear;
clc;

% ǰ�򴫵ݺ���
num1 = [1, -1];
den1 = [1, -5, -2];
% �������ݺ���
num2 = [1, 1];
den2 = [1, 3, 2];
% �ջ�����
[numc, denc] = cloop(num1, den1);
% ��������
[numf, denf] = feedback(num1, den1, num2, den2);
% ���ɱջ����ݺ���
c_tf = tf(numc, denc);
% ���ɷ������Ӵ��ݺ���
f_tf = tf(numf, denf);


