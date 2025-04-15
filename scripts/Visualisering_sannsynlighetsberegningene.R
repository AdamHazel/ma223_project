#SKJERMTID ----------------------------------------------------------------

# 1. Lag conditional effects
ce <- conditional_effects(modell_brm, "Skjermtid", categorical = TRUE)
ce_data <- ce$Skjermtid

# 2. Lag ny kolonne for niva
n_levels <- 5
n_per_level <- nrow(ce_data) / n_levels

ce_data$GradUtforelse <- factor(
  rep(c("Aldri", "Sjelden", "Av og til", "Ofte", "Alltid"), each = n_per_level),
  levels = c("Aldri", "Sjelden", "Av og til", "Ofte", "Alltid")  # <- riktig rekkef??lge
)

# 3. Lag plott
ggplot(ce_data, aes(x = Skjermtid, y = estimate__, color = GradUtforelse)) +
  geom_line(size = 1.2) +
  geom_ribbon(aes(ymin = lower__, ymax = upper__, fill = GradUtforelse), alpha = 0.2, color = NA) +
  labs(
    title = "Sannsynlighet for grad av utforelse etter Skjermtid",
    x = "Skjermtid",
    y = "Sannsynlighet",
    color = "Grad av utforelse",
    fill = "Grad av utforelse"
  ) +
  theme_minimal(base_size = 13)

#ALDER ----------------------------------------------------------------
# 1. Lag conditional effects for Alder
ce <- conditional_effects(modell_brm, "Alder", categorical = TRUE)
ce_data <- ce$Alder

# 2. Lag ny kolonne for niv??
n_levels <- 5
n_per_level <- nrow(ce_data) / n_levels

ce_data$GradUtforelse <- factor(
  rep(c("Aldri", "Sjelden", "Av og til", "Ofte", "Alltid"), each = n_per_level),
  levels = c("Aldri", "Sjelden", "Av og til", "Ofte", "Alltid")
)

# 3. Lag plott
ggplot(ce_data, aes(x = Alder, y = estimate__, color = GradUtforelse)) +
  geom_line(size = 1.2) +
  geom_ribbon(aes(ymin = lower__, ymax = upper__, fill = GradUtforelse), alpha = 0.2, color = NA) +
  labs(
    title = "Sannsynlighet for grad av utforelse etter alder",
    x = "Alder",
    y = "Sannsynlighet",
    color = "Grad av utforelse",
    fill = "Grad av utforelse"
  ) +
  theme_minimal(base_size = 13)

#BEDT ----------------------------------------------------------------------
# 1. Lag conditional effects for Bedt
ce <- conditional_effects(modell_brm, "Bedt", categorical = TRUE)
ce_data <- ce$Bedt

# 2. Lag ny kolonne for niv??
n_levels <- 5
n_per_level <- nrow(ce_data) / n_levels

ce_data$GradUtforelse <- factor(
  rep(c("Aldri", "Sjelden", "Av og til", "Ofte", "Alltid"), each = n_per_level),
  levels = c("Aldri", "Sjelden", "Av og til", "Ofte", "Alltid")
)

# 3. Lag plott
ggplot(ce_data, aes(x = Bedt, y = estimate__, color = GradUtforelse)) +
  geom_line(size = 1.2) +
  geom_ribbon(aes(ymin = lower__, ymax = upper__, fill = GradUtforelse), alpha = 0.2, color = NA) +
  labs(
    title = "Sannsynlighet for grad av utforelse etter hvor ofte de blir bedt",
    x = "Hvor ofte barnet blir bedt om aa bidra",
    y = "Sannsynlighet",
    color = "Grad av utforelse",
    fill = "Grad av utforelse"
  ) +
  theme_minimal(base_size = 13)


