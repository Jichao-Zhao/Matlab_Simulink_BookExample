% Page73�������ֵ����������
% �����������������£�

% clear all
t0 = 0; tfinal = 10;    % ��Ӧʱ��
x0 = [0.2; 0];          % ��ʼ������е���0�����ݵ�ѹ0.2
% Eg4_2_rlcsys��ϵͳ΢�ַ��̵���������
[t, x] = ode45('Eg4_2_rlcsys', [t0 tfinal], x0);

% ����״̬��Ӧͼ�����դ��
figure(1); subplot(211); plot(t, x(:,1)); grid
title('���ݵ�ѹ/V'); xlabel('ʱ��/s');
% ����״̬��Ӧͼ�����դ��
figure(1); subplot(212); plot(t, x(:,2)); grid
title('��е���/A'); xlabel('ʱ��/s');

figure(2); vc=x(:,1); i=x(:,2);
plot(vc, i); grid
title('��е�������ݵ�ѹ�Ĺ�ϵ����');
xlabel('���ݵ�ѹ/v'); ylabel('��е���/A');

