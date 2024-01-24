modell = justert{1}.Values % Fasit + Roomtemp as timeseries
close all


fig = figure
ax = gca
hold on
grid on
xlabel("Time [s]")
ylabel("Temp [C]")
plot(fasit, LineWidth=1.5)
plot(modell,LineWidth=1.5)
legend("Ekte","Modell",Location="southeast")
ax.YTick = [15 : 5 : 85]
ylim([20, 85])
box on
saveas(fig, "SPrangrespons.svg", "svg")
saveas(fig, "SPrangrespons.png", "png")