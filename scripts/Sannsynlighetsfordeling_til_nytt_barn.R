ny <- data.frame(
  Skjermtid = 2, Alder = 14, Ukepenger = 10, Bedt = 10,
  Aktiviteter = 2, Godteri = 2, Gave = 2, Andre = 2
)

posterior_pred <- posterior_epred(modell_brm, newdata = ny)
sannsynlighet <- colMeans(posterior_pred)


nivaa <- c("Aldri", "Sjelden", "Av og til", "Ofte", "Alltid")  

df <- data.frame(
  Nivaa = factor(nivaa, levels = nivaa),
  Sannsynlighet = as.numeric(sannsynlighet)  # Gj??r det eksplisitt
)



ggplot(df, aes(x = Nivaa, y = Sannsynlighet)) +
  geom_col(fill = "#4682B4") +
  geom_text(aes(label = round(Sannsynlighet, 2)), vjust = -0.5, size = 4) +
  labs(
    title = "Predikert sannsynlighetsfordeling for husarbeid",
    subtitle = "Gitt: Skjermtid = 2, Alder = 14, Ukepenger = 10, Bedt = 10",
    x = "Grad av utforelse",
    y = "Sannsynlighet"
  ) +
  ylim(0, 1) +
  theme_minimal(base_size = 13)




#BARN 2---------------------------------------------------------------------

# 1. Lag datasett for nytt barn
ny <- data.frame(
  Skjermtid = 10, Alder = 7, Ukepenger = 2, Bedt = 2,
  Aktiviteter = 2, Godteri = 10, Gave = 2, Andre = 2
)

# 2. Predik??r sannsynlighetsfordeling
posterior_pred <- posterior_epred(modell_brm, newdata = ny)
sannsynlighet <- colMeans(posterior_pred)

# 3. Lag datasett med niv?? og sannsynlighet
nivaa <- c("Aldri", "Sjelden", "Av og til", "Ofte", "Alltid")

df <- data.frame(
  Nivaa = factor(nivaa, levels = nivaa),
  Sannsynlighet = as.numeric(sannsynlighet)
)

# 4. Lag plot
library(ggplot2)

ggplot(df, aes(x = Nivaa, y = Sannsynlighet)) +
  geom_col(fill = "#D95F02") +
  geom_text(aes(label = round(Sannsynlighet, 2)), vjust = -0.5, size = 4) +
  labs(
    title = "Predikert sannsynlighet for husarbeid",
    subtitle = "Gitt: Skjermtid = 10, Alder = 7, Ukepenger = 2, Bedt = 2, Godteri = 10",
    x = "Grad av utforelse",
    y = "Sannsynlighet"
  ) +
  ylim(0, 1) +
  theme_minimal(base_size = 13)


