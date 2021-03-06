% Page281：已知系统状态矩阵，现用全状态反馈控制系统，求反馈增益矩阵 K
clear;
clc;

A = [0 1; -0.16 -1];
B = [0; 1];
% 希望配置的闭环极点
P = [0.5+1i*0.5, 0.5-1i*0.5];
% 采用 Ackerman 公式法进行极点配置
K = acker(A, B, P);
