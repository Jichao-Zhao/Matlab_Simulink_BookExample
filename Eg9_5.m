% Page252����֪ϵͳ���ݺ�������ϵͳԼ����׼��
clear;
clc;

num1 = [2, 1];
den1 = [1, 7, 14, 8];
% ��ϵͳ�ķ�ʽ���ʽ
[r1, p1, k1] = residue(num1, den1);
% �Է�ʽ������б任���õ�Լ����׼��
A1 = diag(p1);
B1 = ones(length(r1), 1);
C1 = rat(r1);
D1 = 0;
