#Forventet niva av husarbeid - 1 variabel
# Viser hvordan forventet niv?? av husarbeid (Utf??rer) endres med ??n faktor av gangen.
# Basert p?? marginaleffekter fra den bayesianske modellen.


effekt <- marginal_effects(modell_brm, effects = "Skjermtid")
plot(effekt)[[1]] + 
  labs(
    x = "Grad av skjermtid som belonning",
    y = "Forventet utforelse av husarbeid"
  ) +
  theme_minimal(base_size = 13)


effekt <- marginal_effects(modell_brm, effects = "Alder")
plot(effekt)[[1]] + 
  labs(
    x = "Alder",
    y = "Forventet utforelse av husarbeid"
  ) +
  theme_minimal(base_size = 13)


effekt <- marginal_effects(modell_brm, effects = "Bedt")
plot(effekt)[[1]] + 
  labs(
    x = "Hvor ofte barnet blir bedt om a hjelpe til",
    y = "Forventet utforelse av husarbeid"
  ) +
  theme_minimal(base_size = 13)


