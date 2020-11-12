% Page263：已知状态空间模型，求该系统的能观 I 型
clear;
clc;

A = [1 2 0; 3 -1 1; 0 2 0];
B = [2; 1; 1];
C = [0 0 1];
D = [0];
% 计算可观判别矩阵
T = obsv(A, C);
% 进行状态空间的线性变换
[Ao1, Bo1, Co1, Do1] = ss2ss(A, B, C, D, T);