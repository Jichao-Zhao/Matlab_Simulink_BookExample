% Page280����֪ϵͳ״̬����ȷ��״̬�������󣬲������ʼ�����µ���Ӧ
clear;
clc;

A = [0 1 0; 0 0 1; -1 -5 -6];
B = [0; 0; 1];
% ϣ�����õļ���
P = [-2+1i*4, -2-1i*4, -10];
% ���� Ackerman ��ʽ�����м�������
K = acker(A, B, P);
% �������ú����ϵͳ
sys_new = ss(A-B*K, eye(3), eye(3), eye(3));
% ����ʱ��
t = 0:0.1:4;
% ��ʼ����Ϊ X0=[1 0 0]ʱ����������Ӧ
X = initial(sys_new, [1;0;0], t);
% ״̬ x1 x2 x3
x1 = [1 0 0]*X';
x2 = [0 1 0]*X';
x3 = [0 0 1]*X';
% ��ͼ
subplot(3, 1, 1);
plot(t, x1);
subplot(3, 1, 2);
plot(t, x2);
subplot(3, 1, 3);
plot(t, x3);