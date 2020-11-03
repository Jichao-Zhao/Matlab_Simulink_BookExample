% Page76�������ϱ任
clear;
clc;

% ������ű���
syms t s;
syms a b positive;
% ������� delta(t-a) ���� Maple �������еĶ����� Dirca(t-a)
Dt = str2sym('Dirca(t-a)');
% ��λ��Ծ���� u(t-b) ���� Maple �������еĶ����� Heaviside(t-b)
Ut = str2sym('Heaviside(t-b)');
% ��������
Mt = [  Dt, Ut;
        exp(-a*t)*sin(b*t), t^2*exp(-t);];    
% �������ϱ任
Ms = laplace(Mt);

