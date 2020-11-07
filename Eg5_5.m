% Page112��ʹ���ζ���귨�ͱ�̷���ȡϵͳ������ָ��
clear;
clc;

% �����㼫��ģ��
G = zpk([ ], [-1+3i, -1-3i], 3);
% ��ȡ��Ծ��Ӧ
step(G);

% ����Ϊ�ζ���귨
% ����Ϊ��̷�

% �����㼫��ģ��
G = zpk([ ], [-1+3i, -1-3i], 3);
% ��������ֵʱ�������Ӧ�ĳ�����
C = dcgain(G);
% ��ȡ��Ծ��Ӧ
[y, t] = step(G);
plot(t,y)
grid
% ȡ������ֵʱ��
[Y, k] = max(y);
timetopeak = t(k);
% ���㳬����
percentovershoot = 100 * (Y-C)/C;
% ��������ʱ��
n = 1;
while y(n) < C
    n = n+1;
end
risetime = t(n);
% ������̬��Ӧʱ��
i = length(t);
while (y(i)>0.98*C)&(y(i)<1.02*C)
    i = i-1;
end
settlingtime = t(i);




