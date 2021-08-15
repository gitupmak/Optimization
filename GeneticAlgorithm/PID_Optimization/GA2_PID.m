%% ITAE =Intergral Time Absolute Error is used as  Performance measure for optimization
% Cost function GA2_PID is applied to Optimization tool.
% Initialize PID gain, k(kp ki kd)
% OptimizePID.slx is the PID controller for DC motor design in Simulink 
function f = GA2_PID(k)
    assignin('base', 'k' , k);
    sim('OptimizePID.slx');
    f=ITAE(length(ITAE));
end
 