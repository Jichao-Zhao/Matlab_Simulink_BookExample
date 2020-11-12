% Page196：已知三阶对象模型，绘制单位阶跃响应曲线
clear;
clc;

% 建立开环传递函数
G = tf(1, conv( conv([1,1],[1,2]), [1,5]));
% 5 个不同的比例系数
Kp = [0.1, 2.0, 2.4, 3.0, 3.5];
for i=1:5
    % 建立各个不同的比例控制下的系统闭环传递函数
    G = feedback(Kp(i)*G, 1);
    % 求取相应的单位阶跃响应，并在同一个图上绘制响应曲线
    step(G);
    hold on
end
% 放置 Kp 取不同值的文字注释
% gtext('Kp=0.1');
% gtext('Kp=2.0');
% gtext('Kp=2.4');
% gtext('Kp=3.0');
% gtext('Kp=3.5');


