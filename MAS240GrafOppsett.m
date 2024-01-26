% modell = justert{1}.Values % Fasit + Roomtemp as timeseries
% close all
% 
% 
% fig = figure
% ax = gca
% hold on
% grid on
% xlabel("Time [s]")
% ylabel("Temp [C]")
% plot(fasit, LineWidth=1.5)
% plot(modell,LineWidth=1.5)
% legend("Ekte","Modell",Location="southeast")
% ax.YTick = [15 : 5 : 85]
% ylim([20, 85])
% box on
% saveas(fig, "SPrangrespons.svg", "svg")
% saveas(fig, "SPrangrespons.png", "png")


temp_real = PID{3}.Values
temp_wanted = PID{4}.Values

close all 
fig = figure
tiledlayout(3,1)
nexttile
ax = gca
hold on
grid on
xlabel("Time [s]")
ylabel("Temp [C]")
plot(temp_real, LineWidth = 1.5)
nexttile
plot(temp_wanted, LineWidth=1.5)
nexttile
plot(temp_real)

% saveas(fig, "PID.svg", "svg")
saveas(fig, "PID.png", "png")
