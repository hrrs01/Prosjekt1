temp_sprang = out.get("Run 17: main").get("Temp Calc").Values.Data
temp_sprang = reshape(temp_sprang, [1, 6690])
model_sprang = out.get("Run 20: Sprangestimat").get(1).Values.Data
model_sprang = reshape(model_sprang, [1, 60])

temp_sprang_aligned = temp_sprang./max(temp_sprang).*100
model_sprang_aligned = model_sprang./max(model_sprang).*100
t_temp = 1 : 6690;
t_model = 1 : 100 : 6000;
hold on

plot(t_temp, temp_sprang)
plot(t_model, model_sprang)
