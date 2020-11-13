% Page370������ϵͳ�������ſ���
clear;
clc;

% ϵͳ��״̬�ռ����
A = [0 1; 0 0];
B = [0; 1];
C = [1 0];
D = [0];
% ��������ϵͳ��״̬�ռ�ģ��
sys = ss(A, B, C, D);
% ����ϵͳ�Ŀɿؾ���
control = ctrb(A, B);
% ���ϵͳ�Ŀɿؾ������
if rank(control)==2
    disp('ϵͳ����ȫ�ܿصģ�');
else
    disp('ϵͳ�ǲ���ȫ�ܿصģ�');
end

% ���ſ������������ܵ����
% ��������״̬�����Ľ�
R = 1;
Q = [1 0; 0 1];
[K, P, E] = lqr(A, B, Q, R);

% �����ջ�ϵͳ������
% ������ϵͳ��״̬����
A_new = A - B * K;
% �����ջ�����ϵͳ����ѧģ��
sys_new = ss(A_new, B, C, D);
% 
figure(1)
step(sys)
% figure(2)
hold on
step(sys_new)
legend('before','after')



