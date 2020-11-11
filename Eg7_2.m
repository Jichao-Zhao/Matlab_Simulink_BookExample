% Page179����֪���ݺ���������δ֪������ Bode ͼ
clear;
clc;

% w Ϊ 10^{-2} �� 10^{2} ֮������ȼ��ֲ��� 200 ����
w = [0, logspace(-2, 2, 200)];
% ��Ȼ�񵴽�Ƶ��
wn = 0.7;
% ����ȵĲ�ͬȡֵ
tau = [0.1, 0.4, 1.0, 1.6, 2.0];
for j=1:length(tau)
    num = wn^2;
    den = [1, 2*tau(j)*wn, wn^2];
    sys = tf(num, den);
    bode(sys, w);
    hold on
end

