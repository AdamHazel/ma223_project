#TABELL_RESULTAT---------------------------------------------------------
tabell <- describe_posterior(modell_brm, effects = "fixed", ci = 0.95)
tabell_clean <- tabell[
  !grepl("Intercept", tabell$Parameter),
  c("Parameter", "Median", "CI_low", "CI_high", "pd")
]

library(gt)

tabell_clean %>%
  gt() %>%
  tab_header(
    title = "Viktige effekter fra Bayesiansk modell"
  ) %>%
  fmt_number(columns = c("Median", "CI_low", "CI_high", "pd"), decimals = 2)



#visualisering av Effekter----------------------------------------------------
effekter <- model_parameters(modell_brm, effects = "fixed", component = "conditional")

# Fjern intercepts
effekter_clean <- effekter[!grepl("Intercept", effekter$Parameter), ]

library(ggplot2)

ggplot(effekter_clean, aes(x = Median, y = reorder(Parameter, Median))) +
  geom_point(size = 3, color = "steelblue") +
  geom_errorbarh(aes(xmin = CI_low, xmax = CI_high), height = 0.2, color = "steelblue") +
  geom_vline(xintercept = 0, linetype = "dashed", color = "grey50") +
  labs(
    title = "Effekter med 95 % credible intervals",
    x = "Effekt (log-odds)",
    y = "Variabel"
  ) +
  theme_minimal()

 