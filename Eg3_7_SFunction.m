function [sys,x0,str,ts,simStateCompliance] = Eg3_7_SFunction(t,x,u,flag)

switch flag
    case 0                                                        % ��ʼ��
        [sys,x0,str,ts,simStateCompliance] = mdlInitializeSizes;
    case 1                                                        % ����ģ�鵼��
        sys = mdlDerivatives(t,x,u);
    case 2                                                        % ����ģ����ɢ״̬
        sys = mdlUpdate(t,x,u);
    case 3                                                        % ����ģ�����
        sys = mdlOutpus(t,x,u);
    case 4                                                        % ������һ������ʱ���
        sys = mdlGetTimeOfNextVarHit(t,x,u);
    case 9                                                        % �������
        sys = mdlTerminate(t,x,u);
    otherwise
        DAStudio.error('Simulink:blocks:unhandledFlag', num2str(flag));
end


function [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes
sizes = simsizes;                           % ��������ģ������Ľṹ����simsizes������
sizes.NumContStates  = 0;                   % ϵͳ�е�����״̬��������Ϊ0
sizes.NumDiscStates  = 0;                   % ϵͳ�е���ɢ״̬��������Ϊ0
sizes.NumOutputs     = 1;                   % ϵͳ���������Ϊ1
sizes.NumInputs      = 1;                   % ϵͳ���������Ϊ1
sizes.DirFeedthrough = 1;                   % ���������䲻����ֱ�ӱ�����ϵ
sizes.NumSampleTimes = 1;                   % ֻ��1������ʱ��
sys = simsizes(sizes);                      % ������󸳸�sys���
x0  = [];                                   % ����״̬�����ĳ�ʼֵ
str = [];                                   % �̶���ʽ
ts  = [0 0];                                % ��ȡֵ��Ӧ����������
simStateCompliance = 'UnknownSimState';


% ����ģ�鵼���Ӻ���
function sys=mdlDerivatives(t,x,u)
sys = [];


% ����ģ����ɢ״̬�Ӻ���
function sys=mdlUpdate(t,x,u)
sys = [];


% ����ģ������Ӻ���
function sys = mdlOutpus(t,x,u)
if u >= 0 && u <= 3
    sys = 0.4 * u;
else
    if u >= 3 && u <= 16
        sys = 0.8 * u + 1.39;
    end
end


% ������һ������ʱ����Ӻ���
function sys=mdlGetTimeOfNextVarHit(t,x,u)
sampleTime = 1;   
sys = t + sampleTime;


% ��������Ӻ���
function sys=mdlTerminate(t,x,u)
sys = [];


