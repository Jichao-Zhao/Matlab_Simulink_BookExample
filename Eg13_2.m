% Page371��������ɢϵͳ�������ſ���
clear;
clc;

% ϵͳ��״̬����
A = [1 0; -1 1];
B = [1; -1];
C = [1 0];
D = [0];
% �趨ָ�꺯���е� Q��R ����
Q = [100 0; 0 1];
R = [1];
% ��������ϵͳ��״̬�ռ�ģ��
sys = ss(A, B, C, D);

% �������ſ��ƵĽ�
[K, S, E] = dlqr(A, B, Q, R);
% ������ϵͳ��״̬����
A_new = A - B * K;
% �����������ϵͳ��ѧģ��
sys_new = ss(A_new, B, C, D);

figure(1)
dstep(A, B, C, D, 1, 10)
% figure(2)
hold on
dstep(A_new, B, C, D, 1, 10)
legend('before','after')