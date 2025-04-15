#POSTERIOR-FORDELINGER
#SKJERMTID
posterior <- as_draws_df(modell_brm)
ggplot(posterior, aes(x = b_Skjermtid)) +
  geom_density(fill = "skyblue", alpha = 0.5) +
  geom_vline(xintercept = 0, linetype = "dashed") +
  labs(title = "Posteriorfordeling for Skjermtid", x = "Estimate", y = "Tetthet")

#GODTERI
posterior <- as_draws_df(modell_brm)
ggplot(posterior, aes(x = b_Godteri)) +
  geom_density(fill = "skyblue", alpha = 0.5) +
  geom_vline(xintercept = 0, linetype = "dashed") +
  labs(title = "Posteriorfordeling for Godteri", x = "Estimate", y = "Tetthet")


