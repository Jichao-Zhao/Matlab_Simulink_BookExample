% Page264����֪״̬�ռ�ģ�ͣ������ܿ��Էֽ���ܹ��Էֽ�
clear;
clc;

A = [0 0 -1; 1 0 -3; 0 1 -3];
B = [1; 1; 0];
C = [0 1 -2];
% �ܿ��Խṹ�ֽ�
[Ac, Bc, Cc] = ctrbf(A, B, C);
% �ܹ��Խṹ�ֽ�
[Ao, Bo, Co] = obsvf(A, B, C);

% ����Ҫ�õ���׼��ʽ
Acc = rot90(Ac, 2);
Bcc = rot90(Bc, 2);
Ccc = rot90(Cc, 2);