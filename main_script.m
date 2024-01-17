
R = 25; % Ohm
U = 12; % Volt

pwm_timesteps = PWM.time;
pwm_signal = PWM.signals.values;

raw_timesteps = voltage.time;
raw_signal = voltage.signals.values;

temp_timesteps = temp.time;
temp_signal = reshape(temp.signals.values, [1,3719]);

T_max = temp_signal(end);
T_A = min(temp_signal);

T_tau = T_max * 0.63;

[ignore, tau_index] = min(abs(temp_signal - T_tau));
tau = tau_index / 10 - 10; % Ten samples per second, and 10 seconds before start
% of step funtion

mass = 42 * 10^(-3);

total_time = length(temp_timesteps)/10 - 10; % Ten samples per timestep
% Minus the time before the signal started

P = U^2 / R * max(pwm_signal)/255;

C_sp = (P * total_time) / ((T_max - T_A) * mass);
C_m = (C_sp * mass)

h = C_m/tau;



hold on
grid on
plot(temp_timesteps, temp_signal);
t = 1:total_time;
T_model = P/h * (1-exp(-t/tau)) + 25;
plot(t, T_model);